from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Singularity_Oci_Create_V0_1_0 = CommandToolBuilder(tool="singularity_oci_create", base_command=["singularity", "oci", "create"], inputs=[ToolInput(tag="in_bundle", input_type=File(optional=True), prefix="--bundle", doc=InputDocumentation(doc="specify the OCI bundle path (required)")), ToolInput(tag="in_empty_process", input_type=Boolean(optional=True), prefix="--empty-process", doc=InputDocumentation(doc="run container without executing container\nprocess (eg: for POD container)")), ToolInput(tag="in_log_format", input_type=File(optional=True), prefix="--log-format", doc=InputDocumentation(doc="specify the log file format. Available\nformats are basic, kubernetes and json\n(default 'kubernetes')")), ToolInput(tag="in_log_path", input_type=File(optional=True), prefix="--log-path", doc=InputDocumentation(doc="specify the log file path")), ToolInput(tag="in_pid_file", input_type=File(optional=True), prefix="--pid-file", doc=InputDocumentation(doc="specify the pid file")), ToolInput(tag="in_sync_socket", input_type=File(optional=True), prefix="--sync-socket", doc=InputDocumentation(doc="specify the path to unix socket for state")), ToolInput(tag="in_synchronization", input_type=String(), position=0, doc=InputDocumentation(doc="Examples:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Oci_Create_V0_1_0().translate("wdl", allow_empty_container=True)

