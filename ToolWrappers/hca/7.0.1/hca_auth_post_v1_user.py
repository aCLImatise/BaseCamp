from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Post_V1_User_V0_1_0 = CommandToolBuilder(tool="hca_auth_post_v1_user", base_command=["hca", "auth", "post-v1-user"], inputs=[ToolInput(tag="in_user_id", input_type=String(optional=True), prefix="--user-id", doc=InputDocumentation(doc="Used to identify users, groups, and roles.")), ToolInput(tag="in_groups", input_type=String(optional=True), prefix="--groups", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Post_V1_User_V0_1_0().translate("wdl", allow_empty_container=True)

