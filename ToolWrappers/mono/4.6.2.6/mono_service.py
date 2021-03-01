from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mono_Service_V0_1_0 = CommandToolBuilder(tool="mono_service", base_command=["mono-service"], inputs=[ToolInput(tag="in_directory_working_directory", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc=":<directory>         Working directory")), ToolInput(tag="in_lock_file_lock", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc=":<lock file>         Lock file (default is /tmp/<service>.lock)")), ToolInput(tag="in_syslog_name_name", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=":<syslog name>       Name to show in syslog")), ToolInput(tag="in_service_name_name", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc=":<service name>      Name of service to start (default is first defined)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Do not send to background nor redirect input/output")), ToolInput(tag="in_no_daemon", input_type=Boolean(optional=True), prefix="--no-daemon", doc=InputDocumentation(doc="Do not send to background nor redirect input/output"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mono_Service_V0_1_0().translate("wdl", allow_empty_container=True)

