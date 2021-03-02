from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Drive_Rename_V0_1_0 = CommandToolBuilder(tool="drive_rename", base_command=["drive", "rename"], inputs=[ToolInput(tag="in_force", input_type=Boolean(optional=True), prefix="-force", doc=InputDocumentation(doc="coerce rename even if remote already exists")), ToolInput(tag="in_local", input_type=Boolean(optional=True), prefix="-local", doc=InputDocumentation(doc="rename local as well (default true)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_remote", input_type=Boolean(optional=True), prefix="-remote", doc=InputDocumentation(doc="rename remote as well (default true)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Rename_V0_1_0().translate("wdl", allow_empty_container=True)

