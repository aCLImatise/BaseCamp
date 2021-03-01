from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Get_V1_User_Owns_V0_1_0 = CommandToolBuilder(tool="hca_auth_get_v1_user_owns", base_command=["hca", "auth", "get-v1-user-owns"], inputs=[ToolInput(tag="in_user_id", input_type=String(optional=True), prefix="--user-id", doc=InputDocumentation(doc="User ID (email).")), ToolInput(tag="in_resource_type", input_type=String(optional=True), prefix="--resource-type", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Get_V1_User_Owns_V0_1_0().translate("wdl", allow_empty_container=True)

