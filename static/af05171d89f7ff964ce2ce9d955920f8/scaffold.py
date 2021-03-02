from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, Float

Scaffold_V0_1_0 = CommandToolBuilder(tool="scaffold", base_command=["scaffold"], inputs=[ToolInput(tag="in_out", input_type=Directory(optional=True), prefix="--out", doc=InputDocumentation(doc="(=out)                   output directory")), ToolInput(tag="in_num_threads", input_type=Int(optional=True), prefix="--num_threads", doc=InputDocumentation(doc="(=0)             number of threads")), ToolInput(tag="in_seed_km_er", input_type=Int(optional=True), prefix="--seed_kmer", doc=InputDocumentation(doc="(=30)              seed kmer size for alignment")), ToolInput(tag="in_min_contig", input_type=Int(optional=True), prefix="--min_contig", doc=InputDocumentation(doc="(=200)            min size of contig")), ToolInput(tag="in_similar", input_type=Float(optional=True), prefix="--similar", doc=InputDocumentation(doc="(=0.95)              similarity for alignment")), ToolInput(tag="in_min_pairs", input_type=Int(optional=True), prefix="--min_pairs", doc=InputDocumentation(doc="(=3)               minimum number of pairs")), ToolInput(tag="in_reads_lib_one_dot_fa", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_lib_two_dot_fa", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="(=out)                   output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scaffold_V0_1_0().translate("wdl", allow_empty_container=True)

