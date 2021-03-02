from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_Del_V0_1_0 = CommandToolBuilder(tool="drive_del", base_command=["drive", "del"], inputs=[ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="delete by id instead of path")), ToolInput(tag="in_matches", input_type=Boolean(optional=True), prefix="-matches", doc=InputDocumentation(doc="search by prefix and delete")), ToolInput(tag="in_no_prompt", input_type=Boolean(optional=True), prefix="-no-prompt", doc=InputDocumentation(doc="disables the prompt")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Del_V0_1_0().translate("wdl", allow_empty_container=True)

