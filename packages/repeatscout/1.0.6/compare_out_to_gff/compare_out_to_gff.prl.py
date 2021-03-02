from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Compare_Out_To_Gff_Prl_V0_1_0 = CommandToolBuilder(tool="compare_out_to_gff.prl", base_command=["compare-out-to-gff.prl"], inputs=[ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="A GFF-formatted file of features. More than one file may be specified\nwith multiple --gff options.")), ToolInput(tag="in_fasta_formatted_file", input_type=File(optional=True), prefix="--f", doc=InputDocumentation(doc="A fasta formatted file. If this is given, then sequences that are under\n(over) the overlap threshold will be in the output. This is a sequence\nfilter.")), ToolInput(tag="in_threshold", input_type=Boolean(optional=True), prefix="--threshold", doc=InputDocumentation(doc="The maximum (minimum) amount of overlap tolerated by any one type of\nrepeat.")), ToolInput(tag="in_over", input_type=Boolean(optional=True), prefix="--over", doc=InputDocumentation(doc="Determines if the threshold is a minimum or a maximum (defaults to\nmaximum; including --over makes it a minimum)")), ToolInput(tag="in_instances", input_type=Boolean(optional=True), prefix="--instances", doc=InputDocumentation(doc="Determines how the overlap calculation is done. If this is not\nspecified, the overlap is calculated by bases: if 40 bases of a repeat\nelement overlaps a feature in one of the GFF files, it is counted as 40\nbases. The sum is taken over all features and all repeats of a given\ntype and divided by the total length of the repeat. If --instances is\nspecified, the 'overlap' is considered to be the number of instances of\na given type that overlap any feature, divided by the total number of\ninstances of that type.")), ToolInput(tag="in_bugs", input_type=String(), position=0, doc=InputDocumentation(doc="None known. This program is remarkably slow, though, and could be sped\nup significantly with a very easy fix.\n"))], outputs=[ToolOutput(tag="out_fasta_formatted_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_fasta_formatted_file", type_hint=File()), doc=OutputDocumentation(doc="A fasta formatted file. If this is given, then sequences that are under\n(over) the overlap threshold will be in the output. This is a sequence\nfilter."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Out_To_Gff_Prl_V0_1_0().translate("wdl", allow_empty_container=True)

