from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Id_V0_1_0 = CommandToolBuilder(tool="id", base_command=["id"], inputs=[ToolInput(tag="in_ignore_compatibility_other", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="ignore, for compatibility with other versions")), ToolInput(tag="in_context", input_type=Boolean(optional=True), prefix="--context", doc=InputDocumentation(doc="print only the security context of the process")), ToolInput(tag="in_group", input_type=Boolean(optional=True), prefix="--group", doc=InputDocumentation(doc="print only the effective group ID")), ToolInput(tag="in_groups", input_type=Boolean(optional=True), prefix="--groups", doc=InputDocumentation(doc="print all group IDs")), ToolInput(tag="in_name", input_type=Boolean(optional=True), prefix="--name", doc=InputDocumentation(doc="print a name instead of a number, for -ugG")), ToolInput(tag="in_real", input_type=Boolean(optional=True), prefix="--real", doc=InputDocumentation(doc="print the real ID instead of the effective ID, with -ugG")), ToolInput(tag="in_user", input_type=Boolean(optional=True), prefix="--user", doc=InputDocumentation(doc="print only the effective user ID")), ToolInput(tag="in_delimit_entries_whitespacenot", input_type=Boolean(optional=True), prefix="--zero", doc=InputDocumentation(doc="delimit entries with NUL characters, not whitespace;\nnot permitted in default format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Id_V0_1_0().translate("wdl", allow_empty_container=True)

