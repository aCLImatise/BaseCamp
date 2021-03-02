from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Caper_Debug_V0_1_0 = CommandToolBuilder(tool="caper_debug", base_command=["caper", "debug"], inputs=[ToolInput(tag="in_dry_run", input_type=Boolean(optional=True), prefix="--dry-run", doc=InputDocumentation(doc="Caper does not take any action.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Prints all logs >= DEBUG level")), ToolInput(tag="in_show_completed_task", input_type=Boolean(optional=True), prefix="--show-completed-task", doc=InputDocumentation(doc="Show information about completed tasks.")), ToolInput(tag="in_port", input_type=String(optional=True), prefix="--port", doc=InputDocumentation(doc="Port for Caper server")), ToolInput(tag="in_ip", input_type=String(optional=True), prefix="--ip", doc=InputDocumentation(doc="IP address for Caper server")), ToolInput(tag="in_no_server_heartbeat", input_type=Boolean(optional=True), prefix="--no-server-heartbeat", doc=InputDocumentation(doc="Disable server heartbeat file.")), ToolInput(tag="in_server_heartbeat_file", input_type=File(optional=True), prefix="--server-heartbeat-file", doc=InputDocumentation(doc="Heartbeat file for Caper clients to get IP and port of\na server")), ToolInput(tag="in_server_heartbeat_timeout", input_type=File(optional=True), prefix="--server-heartbeat-timeout", doc=InputDocumentation(doc="Timeout for a heartbeat file in Milliseconds. A\nheartbeat file older than this interval will be\nignored.\n")), ToolInput(tag="in_wf_id_or_label", input_type=String(), position=0, doc=InputDocumentation(doc="List of workflow IDs to find matching workflows to\ncommit a specified action (list, metadata and abort).\nWildcards (* and ?) are allowed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Caper_Debug_V0_1_0().translate("wdl", allow_empty_container=True)

