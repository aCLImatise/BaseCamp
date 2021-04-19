from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Parsec_Libraries_Set_Library_Permissions_V0_1_0 = CommandToolBuilder(tool="parsec_libraries_set_library_permissions", base_command=["parsec", "libraries", "set_library_permissions"], inputs=[ToolInput(tag="in_access_in", input_type=String(optional=True), prefix="--access_in", doc=InputDocumentation(doc="list of role ids")), ToolInput(tag="in_modify_in", input_type=String(optional=True), prefix="--modify_in", doc=InputDocumentation(doc="list of role ids")), ToolInput(tag="in_add_in", input_type=String(optional=True), prefix="--add_in", doc=InputDocumentation(doc="list of role ids")), ToolInput(tag="in_manage_in", input_type=String(optional=True), prefix="--manage_in", doc=InputDocumentation(doc="list of role ids")), ToolInput(tag="in_library_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Libraries_Set_Library_Permissions_V0_1_0().translate("wdl")

