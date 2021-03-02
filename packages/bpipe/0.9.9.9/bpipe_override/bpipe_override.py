from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Bpipe_Override_V0_1_0 = CommandToolBuilder(tool="bpipe_override", base_command=["bpipe", "override"], inputs=[ToolInput(tag="in_comment_add_given", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="comment to add to given operation")), ToolInput(tag="in_fail_specified_check", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="fail specified check")), ToolInput(tag="in_list_checks_mode", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="list checks and exit, non-interactive mode")), ToolInput(tag="in_override_specified_check", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="override specified check to force it to pass"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bpipe_Override_V0_1_0().translate("wdl", allow_empty_container=True)

