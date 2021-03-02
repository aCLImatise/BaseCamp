from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Drive_Share_V0_1_0 = CommandToolBuilder(tool="drive_share", base_command=["drive", "share"], inputs=[ToolInput(tag="in_emails", input_type=File(optional=True), prefix="-emails", doc=InputDocumentation(doc="emails to share the file to")), ToolInput(tag="in_message", input_type=String(optional=True), prefix="-message", doc=InputDocumentation(doc="message to send receipients")), ToolInput(tag="in_no_prompt", input_type=Boolean(optional=True), prefix="-no-prompt", doc=InputDocumentation(doc="disables the prompt")), ToolInput(tag="in_notify", input_type=Boolean(optional=True), prefix="-notify", doc=InputDocumentation(doc="toggle whether to notify receipients about share (default true)")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="-quiet", doc=InputDocumentation(doc="if set, do not log anything but errors")), ToolInput(tag="in_role", input_type=String(optional=True), prefix="-role", doc=InputDocumentation(doc="role to set to receipients of share. Possible values:\n* owner.\n* reader.\n* writer.\n* commenter.")), ToolInput(tag="in_type", input_type=String(optional=True), prefix="-type", doc=InputDocumentation(doc="scope of accounts to share files with. Possible values:\n* anyone.\n* user.\n* domain.\n* group")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-verbose", doc=InputDocumentation(doc="show step by step information verbosely (default true)")), ToolInput(tag="in_with_link", input_type=Boolean(optional=True), prefix="-with-link", doc=InputDocumentation(doc="turn off file indexing so that only those with the link can view it\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Drive_Share_V0_1_0().translate("wdl", allow_empty_container=True)

