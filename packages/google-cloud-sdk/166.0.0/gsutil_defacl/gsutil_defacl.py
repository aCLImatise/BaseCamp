from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gsutil_Defacl_V0_1_0 = CommandToolBuilder(tool="gsutil_defacl", base_command=["gsutil", "defacl"], inputs=[ToolInput(tag="in_remove_roles_associated", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="Remove all roles associated with the matching entity.")), ToolInput(tag="in_normally_gsutil_stops", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Normally gsutil stops at the first error. The -f option causes\nit to continue when it encounters errors. With this option the\ngsutil exit status will be 0 even if some ACLs couldn't be\nchanged.")), ToolInput(tag="in_add_modify_group_entitys_role", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Add or modify a group entity's role.")), ToolInput(tag="in_add_modify_viewerseditorsowners_role", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="Add or modify a project viewers/editors/owners role.")), ToolInput(tag="in_add_modify_user_entitys_role", input_type=Boolean(optional=True), prefix="-u", doc=InputDocumentation(doc="Add or modify a user entity's role.")), ToolInput(tag="in_description_dot", input_type=String(), position=0, doc=InputDocumentation(doc="CH EXAMPLES"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gsutil_Defacl_V0_1_0().translate("wdl", allow_empty_container=True)

