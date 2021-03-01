from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pybel_Manage_Namespaces_V0_1_0 = CommandToolBuilder(tool="pybel_manage_namespaces", base_command=["pybel", "manage", "namespaces"], inputs=[ToolInput(tag="in_drop", input_type=String(), position=0, doc=InputDocumentation(doc="Drop a namespace by URL.")), ToolInput(tag="in_insert", input_type=String(), position=1, doc=InputDocumentation(doc="Add a namespace by URL.")), ToolInput(tag="in_ls", input_type=String(), position=2, doc=InputDocumentation(doc="List cached namespaces."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Manage_Namespaces_V0_1_0().translate("wdl", allow_empty_container=True)

