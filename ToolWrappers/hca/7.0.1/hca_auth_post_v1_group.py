from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Post_V1_Group_V0_1_0 = CommandToolBuilder(tool="hca_auth_post_v1_group", base_command=["hca", "auth", "post-v1-group"], inputs=[ToolInput(tag="in_group_id", input_type=String(optional=True), prefix="--group-id", doc=InputDocumentation(doc="Used to identify users, groups, and roles.")), ToolInput(tag="in_policy", input_type=String(optional=True), prefix="--policy", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Post_V1_Group_V0_1_0().translate("wdl", allow_empty_container=True)

