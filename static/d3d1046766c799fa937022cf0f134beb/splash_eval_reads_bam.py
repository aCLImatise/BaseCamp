from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Splash_Eval_Reads_Bam_V0_1_0 = CommandToolBuilder(tool="splash_eval_reads_bam", base_command=["splash", "eval-reads", "bam"], inputs=[ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_splash", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_eval_reads", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splash_Eval_Reads_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

