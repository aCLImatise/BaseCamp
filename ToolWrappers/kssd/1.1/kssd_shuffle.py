from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Kssd_Shuffle_V0_1_0 = CommandToolBuilder(tool="kssd_shuffle", base_command=["kssd", "shuffle"], inputs=[ToolInput(tag="in_half_k_merle_n", input_type=Int(optional=True), prefix="--halfKmerLen", doc=InputDocumentation(doc="a half of the length of k-mer. For proyakat\ngenome, k = 8 is suggested; for mammals, k = 10 or\n11 is suggested.[8]")), ToolInput(tag="in_half_sub_strlen", input_type=Int(optional=True), prefix="--halfSubstrLen", doc=InputDocumentation(doc="a half of the length of k-mer substring. [5]")), ToolInput(tag="in_level", input_type=Int(optional=True), prefix="--level", doc=InputDocumentation(doc="the level of dimensionality reduction, the\nexpectation dimensionality reduction rate is 16^n\nif set -l = n. [2]")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="specify the output file name prefix, if not\nspecify default shuffle named 'default.shuf\ngenerated'")), ToolInput(tag="in_use_default", input_type=Boolean(optional=True), prefix="--usedefault", doc=InputDocumentation(doc="All options use default value, which assuming\nprokaryote genomes, k=8, s=5, and l=2.")), ToolInput(tag="in_option_dot_dot_dot", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="specify the output file name prefix, if not\nspecify default shuffle named 'default.shuf\ngenerated'"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kssd_Shuffle_V0_1_0().translate("wdl", allow_empty_container=True)

