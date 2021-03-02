from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean

Fastutils_Length_V0_1_0 = CommandToolBuilder(tool="fastutils_length", base_command=["fastutils", "length"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="input file in fasta/q format [stdin]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output file [stdout]")), ToolInput(tag="in_min_len", input_type=Int(optional=True), prefix="--minLen", doc=InputDocumentation(doc="min read length [0]")), ToolInput(tag="in_maxlen", input_type=Int(optional=True), prefix="--maxLen", doc=InputDocumentation(doc="max read length [LLONG_MAX]")), ToolInput(tag="in_total", input_type=Boolean(optional=True), prefix="--total", doc=InputDocumentation(doc="print total number of bases in third column"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastutils_Length_V0_1_0().translate("wdl", allow_empty_container=True)

