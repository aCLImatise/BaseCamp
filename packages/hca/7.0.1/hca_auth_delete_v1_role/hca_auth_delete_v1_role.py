from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hca_Auth_Delete_V1_Role_V0_1_0 = CommandToolBuilder(tool="hca_auth_delete_v1_role", base_command=["hca", "auth", "delete-v1-role"], inputs=[ToolInput(tag="in_role_id", input_type=String(optional=True), prefix="--role-id", doc=InputDocumentation(doc="The name of the role."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hca_Auth_Delete_V1_Role_V0_1_0().translate("wdl", allow_empty_container=True)

