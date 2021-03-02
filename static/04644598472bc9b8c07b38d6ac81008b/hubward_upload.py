from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hubward_Upload_V0_1_0 = CommandToolBuilder(tool="hubward_upload", base_command=["hubward", "upload"], inputs=[ToolInput(tag="in_hub_only", input_type=String(optional=True), prefix="--hub-only", doc=InputDocumentation(doc="been specified, only these files will be uploaded to the")), ToolInput(tag="in_rsync_options", input_type=String(optional=True), prefix="--rsync_options", doc=InputDocumentation(doc="Options for rsync. Default is ''-avrL --progress''")), ToolInput(tag="in_host", input_type=File(optional=True), prefix="--host", doc=InputDocumentation(doc="Host to upload to. Overrides [server][host] in the\ngroup config file. (default: -)")), ToolInput(tag="in_user", input_type=File(optional=True), prefix="--user", doc=InputDocumentation(doc="User for host. Overrides [server][user] in the group\nconfig file. (default: -)")), ToolInput(tag="in_hub_remote", input_type=File(optional=True), prefix="--hub_remote", doc=InputDocumentation(doc="Remote filename for the top-level hub file. Overrides\n[server][hub_remote] in the config file. (default: -)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hubward_Upload_V0_1_0().translate("wdl", allow_empty_container=True)

