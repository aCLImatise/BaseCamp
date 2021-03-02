from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mixcr_Analyze_Help_V0_1_0 = CommandToolBuilder(tool="mixcr_analyze_help", base_command=["mixcr", "analyze", "help"], inputs=[ToolInput(tag="in_scr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_analyze", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_help", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_command_dot_dot_dot", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixcr_Analyze_Help_V0_1_0().translate("wdl", allow_empty_container=True)

