from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Roles_Create_Role_V0_1_0 = CommandToolBuilder(tool="parsec_roles_create_role", base_command=["parsec", "roles", "create_role"], inputs=[ToolInput(tag="in_user_ids", input_type=String(optional=True), prefix="--user_ids", doc=InputDocumentation(doc="A list of encoded user IDs to add to the new role")), ToolInput(tag="in_group_ids", input_type=String(optional=True), prefix="--group_ids", doc=InputDocumentation(doc="A list of encoded group IDs to add to the new role")), ToolInput(tag="in_role_name", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_description", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Roles_Create_Role_V0_1_0().translate("wdl")

