from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Message_Validate_V0_1_0 = CommandToolBuilder(tool="message_validate", base_command=["message-validate"], inputs=[ToolInput(tag="in_message", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Message_Validate_V0_1_0().translate("wdl", allow_empty_container=True)

