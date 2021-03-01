from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Cromwell_Tools_Abort_V0_1_0 = CommandToolBuilder(tool="cromwell_tools_abort", base_command=["cromwell-tools", "abort"], inputs=[ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="The URL to the Cromwell server. e.g.\n'https://cromwell.server.org/'")), ToolInput(tag="in_username", input_type=String(optional=True), prefix="--username", doc=InputDocumentation(doc="Cromwell username for HTTPBasicAuth.")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Cromwell password for HTTPBasicAuth.")), ToolInput(tag="in_secrets_file", input_type=File(optional=True), prefix="--secrets-file", doc=InputDocumentation(doc="Path to the JSON file containing username, password,\nand url fields.")), ToolInput(tag="in_service_account_key", input_type=File(optional=True), prefix="--service-account-key", doc=InputDocumentation(doc="Path to the JSON key file for authenticating with\nCaaS.")), ToolInput(tag="in_cromwell_workflow_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A Cromwell workflow UUID, which is the workflow\nidentifier.\n")), ToolInput(tag="in_request_cromwell_abort", input_type=String(), position=0, doc=InputDocumentation(doc="Request Cromwell to abort a running workflow by UUID."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cromwell_Tools_Abort_V0_1_0().translate("wdl", allow_empty_container=True)

