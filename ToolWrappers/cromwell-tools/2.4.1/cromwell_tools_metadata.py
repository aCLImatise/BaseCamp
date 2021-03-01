from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Array

Cromwell_Tools_Metadata_V0_1_0 = CommandToolBuilder(tool="cromwell_tools_metadata", base_command=["cromwell-tools", "metadata"], inputs=[ToolInput(tag="in_url", input_type=String(optional=True), prefix="--url", doc=InputDocumentation(doc="The URL to the Cromwell server. e.g.\n'https://cromwell.server.org/'")), ToolInput(tag="in_username", input_type=String(optional=True), prefix="--username", doc=InputDocumentation(doc="Cromwell username for HTTPBasicAuth.")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Cromwell password for HTTPBasicAuth.")), ToolInput(tag="in_secrets_file", input_type=File(optional=True), prefix="--secrets-file", doc=InputDocumentation(doc="Path to the JSON file containing username, password,\nand url fields.")), ToolInput(tag="in_service_account_key", input_type=File(optional=True), prefix="--service-account-key", doc=InputDocumentation(doc="Path to the JSON key file for authenticating with\nCaaS.")), ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="A Cromwell workflow UUID, which is the workflow")), ToolInput(tag="in_exclude_key", input_type=Array(t=String(), optional=True), prefix="--excludeKey", doc=InputDocumentation(doc="When specified key(s) to exclude from the metadata.\nMatches any key starting with the value. May not be\nused with includeKey.")), ToolInput(tag="in_expand_sub_workflows", input_type=String(optional=True), prefix="--expandSubWorkflows", doc=InputDocumentation(doc="When true, metadata for sub workflows will be fetched\nand inserted automatically in the metadata response.\n")), ToolInput(tag="in_identifier_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--includeKey INCLUDEKEY [INCLUDEKEY ...]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cromwell_Tools_Metadata_V0_1_0().translate("wdl", allow_empty_container=True)

