from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Pinky_V0_1_0 = CommandToolBuilder(tool="pinky", base_command=["pinky"], inputs=[ToolInput(tag="in_produce_format_output", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="produce long format output for the specified USERs")), ToolInput(tag="in_omit_users_directory", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="omit the user's home directory and shell in long format")), ToolInput(tag="in_omit_users_plan", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="omit the user's plan file in long format")), ToolInput(tag="in_do_format_output", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="do short format output, this is the default")), ToolInput(tag="in_omit_line_column", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="omit the line of column headings in short format")), ToolInput(tag="in_omit_users_full_name_short", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="omit the user's full name in short format")), ToolInput(tag="in_omit_users_full_name_host", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="omit the user's full name and remote host in short format")), ToolInput(tag="in_omit_users_host", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="omit the user's full name, remote host and idle time\nin short format"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pinky_V0_1_0().translate("wdl", allow_empty_container=True)

