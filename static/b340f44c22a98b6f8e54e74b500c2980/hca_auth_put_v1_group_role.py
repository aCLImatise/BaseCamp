from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Put_V1_Group_Role_V0_1_0 = CommandToolBuilder(tool="hca_auth_put_v1_group_role", base_command=["hca", "auth", "put-v1-group-role"], inputs=[ToolInput(tag="in_group_id", input_type=String(optional=True), prefix="--group-id", doc=InputDocumentation(doc="The name of the group.")), ToolInput(tag="in_roles", input_type=String(optional=True), prefix="--roles", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Put_V1_Group_Role_V0_1_0().translate("wdl", allow_empty_container=True)

