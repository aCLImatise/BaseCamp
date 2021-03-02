from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Samtools_0_1_18_Depth_V0_1_0 = CommandToolBuilder(tool="samtools_0.1.18_depth", base_command=["samtools_0.1.18", "depth"], inputs=[ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=String(optional=True), prefix="-Q", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_two_depth", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_0_1_18_Depth_V0_1_0().translate("wdl", allow_empty_container=True)

