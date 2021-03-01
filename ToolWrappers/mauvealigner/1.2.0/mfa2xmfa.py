from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mfa2Xmfa_V0_1_0 = CommandToolBuilder(tool="mfa2xmfa", base_command=["mfa2xmfa"], inputs=[ToolInput(tag="in_mfa_alignment_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_x_mfa_alignment_output", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_unaligned", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(optional=True), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(optional=True), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mfa2Xmfa_V0_1_0().translate("wdl", allow_empty_container=True)

