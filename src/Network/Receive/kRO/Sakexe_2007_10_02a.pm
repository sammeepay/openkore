#########################################################################
#  OpenKore - Packet Receiveing
#  This module contains functions for Receiveing packets to the server.
#
#  This software is open source, licensed under the GNU General Public
#  License, version 2.
#  Basically, this means that you're allowed to modify and distribute
#  this software. However, if you distribute modified versions, you MUST
#  also distribute the source code.
#  See http://www.gnu.org/licenses/gpl.html for the full license.
#
#  $Revision: 7841 $
#  $Id: kRO.pm 6687 2009-04-19 19:04:25Z technologyguild $
########################################################################
# Korea (kRO)
# The majority of private servers use eAthena, this is a clone of kRO

package Network::Receive::kRO::Sakexe_2007_10_02a;

use strict;
use base qw(Network::Receive::kRO::Sakexe_2007_05_07a);

sub new {
	my ($class) = @_;
	my $self = $class->SUPER::new(@_);

	my %handlers = qw(
		account_id 0283
	);

	$self->{packet_lut}{$_} = $handlers{$_} for keys %handlers;

	return $self;
}

1;