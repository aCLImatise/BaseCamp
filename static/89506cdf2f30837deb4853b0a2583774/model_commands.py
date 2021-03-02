from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Model_Commands_V0_1_0 = CommandToolBuilder(tool="model_commands", base_command=["model", "commands"], inputs=[ToolInput(tag="in_x", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_model", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Model_Commands_V0_1_0().translate("wdl", allow_empty_container=True)

