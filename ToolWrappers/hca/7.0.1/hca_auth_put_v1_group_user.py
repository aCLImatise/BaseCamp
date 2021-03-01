from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Put_V1_Group_User_V0_1_0 = CommandToolBuilder(tool="hca_auth_put_v1_group_user", base_command=["hca", "auth", "put-v1-group-user"], inputs=[ToolInput(tag="in_group_id", input_type=String(optional=True), prefix="--group-id", doc=InputDocumentation(doc="The name of the group.")), ToolInput(tag="in_users", input_type=String(optional=True), prefix="--users", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Put_V1_Group_User_V0_1_0().translate("wdl", allow_empty_container=True)

