from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Bp_Find_Blast_Matches_Pl_V0_1_0 = CommandToolBuilder(tool="bp_find_blast_matches.pl", base_command=["bp_find-blast-matches.pl"], inputs=[ToolInput(tag="in_blast", input_type=File(optional=True), prefix="-blast", doc=InputDocumentation(doc="BLAST output file to read from. The alignment should use the file\nspecified by '-fasta' option ideally")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="-fasta", doc=InputDocumentation(doc="FASTA file to read from. This is where the sequence will be\nextracted from")), ToolInput(tag="in_maximum_evalue_matches", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Maximum e-value for matches (0.01 by default)")), ToolInput(tag="in_number_base_to", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Number of base pairs of 5' region to be included with the sequence")), ToolInput(tag="in_number_only_excluding", input_type=Boolean(optional=True), prefix="-5", doc=InputDocumentation(doc="Number of base pairs of 5' region only, excluding the regular")), ToolInput(tag="in_exact_match_display", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Exact match to display (this option can't be used in conjunction\nwith '-n'")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="-header", doc=InputDocumentation(doc="The FASTA header to display instead of the default\n")), ToolInput(tag="in_three", input_type=Boolean(optional=True), prefix="-3", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_blast_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_blast", output_type=File(optional=True), selector=InputSelector(input_to_select="in_blast", type_hint=File()), doc=OutputDocumentation(doc="BLAST output file to read from. The alignment should use the file\nspecified by '-fasta' option ideally"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Find_Blast_Matches_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

