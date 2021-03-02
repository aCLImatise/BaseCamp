from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Bp_Search2Alnblocks_Pl_V0_1_0 = CommandToolBuilder(tool="bp_search2alnblocks.pl", base_command=["bp_search2alnblocks.pl"], inputs=[ToolInput(tag="in_max_evalue", input_type=Boolean(optional=True), prefix="--maxevalue", doc=InputDocumentation(doc="Maximum E-value for an HSP")), ToolInput(tag="in_mine_value", input_type=Boolean(optional=True), prefix="--minevalue", doc=InputDocumentation(doc="Minimum E-value for an HSP")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Minimum length of an HSP [default 0]")), ToolInput(tag="in_max_id", input_type=Boolean(optional=True), prefix="--maxid", doc=InputDocumentation(doc="Maximum Percent Id [default 100]\n(to help remove sequences which are really close)")), ToolInput(tag="in_mini_d", input_type=Boolean(optional=True), prefix="--minid", doc=InputDocumentation(doc="Minimum Percent Identity for an HSP [default 0]")), ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="An optional input filename (expects input on STDIN by default)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="An optional output filename (exports to STDOUT by default)")), ToolInput(tag="in_format", input_type=Boolean(optional=True), prefix="--format", doc=InputDocumentation(doc="Specify a different Search Alignment format-\n{fasta, axt, waba, blast, blastxml} are all permitted\nalthough the format must have actual alignment\nsequence for this script to work\nSee L<Bio::SearchIO> for more information.")), ToolInput(tag="in_out_format", input_type=String(optional=True), prefix="--outformat", doc=InputDocumentation(doc="format for the alignment blocks, anything\nL<Bio::AlignIO> supports.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on debugging"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="An optional output filename (exports to STDOUT by default)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bp_Search2Alnblocks_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

