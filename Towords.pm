package Core::Towords ;

use Moose ;
use namespace::autoclean;


## it would take some time to put the rest in
my @numword = ('zero','One','Two','Three','four','Five','Six','Seven','Eight','Nine','Ten','Eleven',
				'twnenty' twenty two ... thirty ... foury .... etc) ;

has 'fw' => ( is => 'ro',
		      isa => 'Num',
	        ) ;
has 'sw' => ( is => 'ro',
			  isa => 'Num',
			) ;

sub get_words {
	
	$self = shift ;
	
	### get length of first number
	$self->{words}{firstnumword} = _place_units($self->{fw}) ;
	
	$self->{words}{secondnumword} = _place_units($self->{sw}) ;
	
	return $self->{words} ;
}

=head4
	The following attempts to convert the numbers using the numword array
	and by understanding at which point in the number passed
	
=cut

sub _place_units {


	my $num = shift ;
	my @splnum = split(//, $num) ;
	my $count = scalar(@splnum) ;
	my $words ;
	my $val ;
	for my $i ($count .. 1) {

		if ($i == 3){
			$word = $splnum[$i] . ' Hundred ' . $word ;
		} elsif ($i == 6) {
			$word = $splnum[$i] . ' Thousand ' . $word ;
		} else {
			if ($i + 1 =~ /\d/)(
				$val = $splnum[$i] . $splnum[$i+1] ;
			} else {
				$val = $splnum[$i] ;
			}
			$word = $numword[$splnum[$i]] . $word ;
		}
	}
	return $words ;
}



__PACKAGE__->meta->make_immutable;
1;
