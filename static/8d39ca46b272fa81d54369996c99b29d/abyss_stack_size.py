from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Abyss_Stack_Size_V0_1_0 = CommandToolBuilder(tool="abyss_stack_size", base_command=["abyss-stack-size"], inputs=[ToolInput(tag="in_stack_size", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/abyss:2.2.5--ha4ec83a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Stack_Size_V0_1_0().translate("wdl")

