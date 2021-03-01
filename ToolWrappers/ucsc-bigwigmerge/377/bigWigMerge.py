from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Bigwigmerge_V0_1_0 = CommandToolBuilder(tool="bigWigMerge", base_command=["bigWigMerge"], inputs=[ToolInput(tag="in_threshold", input_type=Int(optional=True), prefix="-threshold", doc=InputDocumentation(doc="- don't output values at or below this threshold. Default is 0.0")), ToolInput(tag="in_adjust", input_type=Int(optional=True), prefix="-adjust", doc=InputDocumentation(doc="- add adjustment to each value")), ToolInput(tag="in_clip", input_type=String(optional=True), prefix="-clip", doc=InputDocumentation(doc="- values higher than this are clipped to this value")), ToolInput(tag="in_in_list", input_type=Boolean(optional=True), prefix="-inList", doc=InputDocumentation(doc="- input file are lists of file names of bigWigs")), ToolInput(tag="in_max", input_type=Boolean(optional=True), prefix="-max", doc=InputDocumentation(doc="- merged value is maximum from input files rather than sum")), ToolInput(tag="in_inn_dot_bw", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bigwigmerge_V0_1_0().translate("wdl", allow_empty_container=True)

