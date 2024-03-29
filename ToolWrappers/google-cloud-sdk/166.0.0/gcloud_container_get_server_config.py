from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gcloud_Container_Get_Server_Config_V0_1_0 = CommandToolBuilder(tool="gcloud_container_get_server_config", base_command=["gcloud", "container", "get-server-config"], inputs=[ToolInput(tag="in_optional", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gcloud_Container_Get_Server_Config_V0_1_0().translate("wdl", allow_empty_container=True)

