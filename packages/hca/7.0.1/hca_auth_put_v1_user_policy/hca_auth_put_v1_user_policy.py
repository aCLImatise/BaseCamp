from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Put_V1_User_Policy_V0_1_0 = CommandToolBuilder(tool="hca_auth_put_v1_user_policy", base_command=["hca", "auth", "put-v1-user-policy"], inputs=[ToolInput(tag="in_user_id", input_type=String(optional=True), prefix="--user-id", doc=InputDocumentation(doc="User ID (email).")), ToolInput(tag="in_policy", input_type=String(optional=True), prefix="--policy", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Put_V1_User_Policy_V0_1_0().translate("wdl", allow_empty_container=True)

