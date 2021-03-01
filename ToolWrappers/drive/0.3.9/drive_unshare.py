from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Drive_Unshare_V0_1_0 = CommandToolBuilder(tool="drive_unshare", base_command=["drive", "unshare"], inputs=[ToolInput(tag="in_emails", input_type=File(optional=True), prefix="-emails", doc=InputDocumentation(doc="emails to share the file to")), ToolInput(tag="in_no_prompt", input_type=Boolean(optional=True), prefix="-no-prompt", doc=InputDocumentation(doc="disables the prompt")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_role", input_type=String(optional=True), prefix="-role", doc=InputDocumentation(doc="role to set to receipients of share. Possible values:\n* owner.\n* reader.\n* writer.\n* commenter.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc="scope of account to revoke access to")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="show step by step information verbosely (default true)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Unshare_V0_1_0().translate("wdl", allow_empty_container=True)

