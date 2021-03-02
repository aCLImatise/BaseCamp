from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File, String

Paranodestart_V0_1_0 = CommandToolBuilder(tool="paraNodeStart", base_command=["paraNodeStart"], inputs=[ToolInput(tag="in_exe", input_type=Boolean(optional=True), prefix="-exe", doc=InputDocumentation(doc="=/path/to/paraNode")), ToolInput(tag="in_log_facility", input_type=Int(optional=True), prefix="-logFacility", doc=InputDocumentation(doc="Log to the specified syslog facility - default local0.")), ToolInput(tag="in_log_min_priority", input_type=File(optional=True), prefix="-logMinPriority", doc=InputDocumentation(doc="minimum syslog priority to log, also filters file logging.\ndefaults to 'warn'")), ToolInput(tag="in_log", input_type=File(optional=True), prefix="-log", doc=InputDocumentation(doc="Log to file instead of syslog.")), ToolInput(tag="in_umask", input_type=Int(optional=True), prefix="-umask", doc=InputDocumentation(doc="Set umask to run under - default 002.")), ToolInput(tag="in_random_delay", input_type=Int(optional=True), prefix="-randomDelay", doc=InputDocumentation(doc="Set random start delay in milliseconds - default 5000.")), ToolInput(tag="in_user_path", input_type=File(optional=True), prefix="-userPath", doc=InputDocumentation(doc=":bin/i386  User dirs to add to path.")), ToolInput(tag="in_sys_path", input_type=Boolean(optional=True), prefix="-sysPath", doc=InputDocumentation(doc="=/sbin:/local/bin  System dirs to add to path.")), ToolInput(tag="in_env", input_type=String(optional=True), prefix="-env", doc=InputDocumentation(doc="=value - add environment variable to jobs.  Maybe repeated.")), ToolInput(tag="in_hub", input_type=String(optional=True), prefix="-hub", doc=InputDocumentation(doc="Nodes will ignore messages from elsewhere.")), ToolInput(tag="in_rsh", input_type=Boolean(optional=True), prefix="-rsh", doc=InputDocumentation(doc="=/path/to/rsh/like/command."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paranodestart_V0_1_0().translate("wdl", allow_empty_container=True)

