from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Wes_Client_V0_1_0 = CommandToolBuilder(tool="wes_client", base_command=["wes-client"], inputs=[ToolInput(tag="in_host", input_type=Int(optional=True), prefix="--host", doc=InputDocumentation(doc="Example: '--host=localhost:8080'. Defaults to")), ToolInput(tag="in_proto", input_type=String(optional=True), prefix="--proto", doc=InputDocumentation(doc="Options: [http, https]. Defaults to WES_API_PROTO\n(https).")), ToolInput(tag="in_attachments", input_type=Int(optional=True), prefix="--attachments", doc=InputDocumentation(doc="A comma separated list of attachments to include.\nExample: --attachments='testdata/dockstore-tool-\nmd5sum.cwl,testdata/md5sum.input'")), ToolInput(tag="in_page_size", input_type=Int(optional=True), prefix="--page-size", doc=InputDocumentation(doc="Specify a <workflow-id>. Example: '--get=<workflow-\nid>'")), ToolInput(tag="in_log", input_type=String(optional=True), prefix="--log", doc=InputDocumentation(doc="Specify a <workflow-id>. Example: '--log=<workflow-\nid>'")), ToolInput(tag="in_auth", input_type=String(optional=True), prefix="--auth", doc=InputDocumentation(doc="")), ToolInput(tag="in_workflow_url", input_type=String(), position=0, doc=InputDocumentation(doc="job_order")), ToolInput(tag="in_wes_api_host_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--auth AUTH           Defaults to WES_API_AUTH."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wes_Client_V0_1_0().translate("wdl", allow_empty_container=True)

