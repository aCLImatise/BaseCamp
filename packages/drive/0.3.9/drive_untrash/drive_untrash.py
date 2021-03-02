from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_Untrash_V0_1_0 = CommandToolBuilder(tool="drive_untrash", base_command=["drive", "untrash"], inputs=[ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="untrash by id instead of path")), ToolInput(tag="in_matches", input_type=Boolean(optional=True), prefix="-matches", doc=InputDocumentation(doc="search by prefix and untrash")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Untrash_V0_1_0().translate("wdl", allow_empty_container=True)

