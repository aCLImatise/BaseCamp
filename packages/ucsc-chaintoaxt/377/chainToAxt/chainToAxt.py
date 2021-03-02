from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Chaintoaxt_V0_1_0 = CommandToolBuilder(tool="chainToAxt", base_command=["chainToAxt"], inputs=[ToolInput(tag="in_max_gap", input_type=Int(optional=True), prefix="-maxGap", doc=InputDocumentation(doc="gap sized allowed without breaking, default 100")), ToolInput(tag="in_max_chain", input_type=Int(optional=True), prefix="-maxChain", doc=InputDocumentation(doc="chain size allowed without breaking, default 1073741823")), ToolInput(tag="in_min_score", input_type=String(optional=True), prefix="-minScore", doc=InputDocumentation(doc="score of chain")), ToolInput(tag="in_mini_d", input_type=String(optional=True), prefix="-minId", doc=InputDocumentation(doc="percentage ID within blocks")), ToolInput(tag="in_bed", input_type=Boolean(optional=True), prefix="-bed", doc=InputDocumentation(doc="Output bed instead of axt")), ToolInput(tag="in_in_dot_chain", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_t_nib_dir_or_two_bit", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_q_nib_dir_or_two_bit", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chaintoaxt_V0_1_0().translate("wdl", allow_empty_container=True)

