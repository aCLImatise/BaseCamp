from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Touch_V0_1_0 = CommandToolBuilder(tool="touch", base_command=["touch"], inputs=[ToolInput(tag="in_change_only_access_time", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="change only the access time")), ToolInput(tag="in_no_create", input_type=Boolean(optional=True), prefix="--no-create", doc=InputDocumentation(doc="do not create any files")), ToolInput(tag="in_date", input_type=String(optional=True), prefix="--date", doc=InputDocumentation(doc="parse STRING and use it instead of current time")), ToolInput(tag="in_ignored", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="(ignored)")), ToolInput(tag="in_change_only_modification_time", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="change only the modification time")), ToolInput(tag="in_reference", input_type=File(optional=True), prefix="--reference", doc=InputDocumentation(doc="use this file's times instead of current time")), ToolInput(tag="in_use_current_time", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="use [[CC]YY]MMDDhhmm[.ss] instead of current time")), ToolInput(tag="in_time", input_type=String(optional=True), prefix="--time", doc=InputDocumentation(doc="change the specified time:\nWORD is access, atime, or use: equivalent to -a\nWORD is modify or mtime: equivalent to -m"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Touch_V0_1_0().translate("wdl", allow_empty_container=True)

