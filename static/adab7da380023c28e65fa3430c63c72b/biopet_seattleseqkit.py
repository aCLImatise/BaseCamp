from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Biopet_Seattleseqkit_V0_1_0 = CommandToolBuilder(tool="biopet_seattleseqkit", base_command=["biopet-seattleseqkit"], inputs=[ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log_level", doc=InputDocumentation(doc="Level of log information printed. Possible levels: 'debug', 'info', 'warn', 'error'")), ToolInput(tag="in_tool_name", input_type=String(), position=0, doc=InputDocumentation(doc="Name of the tool to execute"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biopet_Seattleseqkit_V0_1_0().translate("wdl", allow_empty_container=True)

