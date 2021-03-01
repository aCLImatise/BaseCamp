from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_Move_V0_1_0 = CommandToolBuilder(tool="drive_move", base_command=["drive", "move"], inputs=[ToolInput(tag="in_keep_parent", input_type=Boolean(optional=True), prefix="-keep-parent", doc=InputDocumentation(doc="ensures that when moving a file into a destination, that we also retain its original parent so that it will exist in more than one folder")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Move_V0_1_0().translate("wdl", allow_empty_container=True)

