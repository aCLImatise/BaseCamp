from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Tools_Run_Tool_V0_1_0 = CommandToolBuilder(tool="parsec_tools_run_tool", base_command=["parsec", "tools", "run_tool"], inputs=[ToolInput(tag="in_history_id", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tool_id", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_tool_inputs", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Tools_Run_Tool_V0_1_0().translate("wdl")

