from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Circlator_Command_V0_1_0 = CommandToolBuilder(tool="circlator_command", base_command=["circlator", "command"], inputs=[ToolInput(tag="in_required_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circlator_Command_V0_1_0().translate("wdl", allow_empty_container=True)

