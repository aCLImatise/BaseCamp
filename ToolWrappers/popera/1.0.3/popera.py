from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Float

Popera_V0_1_0 = CommandToolBuilder(tool="popera", base_command=["popera"], inputs=[ToolInput(tag="in_data", input_type=File(optional=True), prefix="--data", doc=InputDocumentation(doc="data file, should be sorted bam format")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="NH sample name default=NH_sample")), ToolInput(tag="in_bandwidth", input_type=Int(optional=True), prefix="--bandwidth", doc=InputDocumentation(doc="kernel smooth band width, should >1, default=200")), ToolInput(tag="in_threshold", input_type=Float(optional=True), prefix="--threshold", doc=InputDocumentation(doc="Hot spots threshold, default=4.0")), ToolInput(tag="in_minlength", input_type=Int(optional=True), prefix="--minlength", doc=InputDocumentation(doc="minimum length of hot spots, default=5")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="threads number or cpu number, default=4")), ToolInput(tag="in_bigwig", input_type=File(optional=True), prefix="--bigwig", doc=InputDocumentation(doc="whether out put bigwig file, default=False")), ToolInput(tag="in_exclude_chr", input_type=String(optional=True), prefix="--excludechr", doc=InputDocumentation(doc="Don't count those DHs, example='-x ChrM,ChrC'\n"))], outputs=[ToolOutput(tag="out_bigwig", output_type=File(optional=True), selector=InputSelector(input_to_select="in_bigwig", type_hint=File()), doc=OutputDocumentation(doc="whether out put bigwig file, default=False"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Popera_V0_1_0().translate("wdl", allow_empty_container=True)

