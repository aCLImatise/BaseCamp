from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Drive_Md5Sum_V0_1_0 = CommandToolBuilder(tool="drive_md5sum", base_command=["drive", "md5sum"], inputs=[ToolInput(tag="in_depth", input_type=Int(optional=True), prefix="-depth", doc=InputDocumentation(doc="max traversal depth (default 1)")), ToolInput(tag="in_id", input_type=Boolean(optional=True), prefix="-id", doc=InputDocumentation(doc="stat by id instead of path")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_recursive", input_type=Boolean(optional=True), prefix="-recursive", doc=InputDocumentation(doc="recursively discover folders\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Md5Sum_V0_1_0().translate("wdl", allow_empty_container=True)

