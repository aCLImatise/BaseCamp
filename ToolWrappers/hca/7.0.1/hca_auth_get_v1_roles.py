from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Get_V1_Roles_V0_1_0 = CommandToolBuilder(tool="hca_auth_get_v1_roles", base_command=["hca", "auth", "get-v1-roles"], inputs=[ToolInput(tag="in_no_paginate", input_type=String(optional=True), prefix="--no-paginate", doc=InputDocumentation(doc="Do not automatically page the responses"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Get_V1_Roles_V0_1_0().translate("wdl", allow_empty_container=True)

