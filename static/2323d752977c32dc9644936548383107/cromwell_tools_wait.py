from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Cromwell_Tools_Wait_V0_1_0 = CommandToolBuilder(tool="cromwell_tools_wait", base_command=["cromwell-tools", "wait"], inputs=[ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="The URL to the Cromwell server. e.g.\n'https://cromwell.server.org/'")), ToolInput(tag="in_username", input_type=String(optional=True), prefix="--username", doc=InputDocumentation(doc="Cromwell username for HTTPBasicAuth.")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Cromwell password for HTTPBasicAuth.")), ToolInput(tag="in_secrets_file", input_type=File(optional=True), prefix="--secrets-file", doc=InputDocumentation(doc="Path to the JSON file containing username, password,\nand url fields.")), ToolInput(tag="in_service_account_key", input_type=File(optional=True), prefix="--service-account-key", doc=InputDocumentation(doc="Path to the JSON key file for authenticating with\nCaaS.")), ToolInput(tag="in_timeout_minutes", input_type=Int(optional=True), prefix="--timeout-minutes", doc=InputDocumentation(doc="number of minutes to wait before timeout.")), ToolInput(tag="in_poll_interval_seconds", input_type=String(optional=True), prefix="--poll-interval-seconds", doc=InputDocumentation(doc="seconds between polling cromwell for workflow status.")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="whether to silently print verbose workflow information\nwhile polling cromwell.\n")), ToolInput(tag="in_workflow_ids", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cromwell_Tools_Wait_V0_1_0().translate("wdl", allow_empty_container=True)

