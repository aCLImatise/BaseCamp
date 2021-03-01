from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pybel_Manage_Networks_V0_1_0 = CommandToolBuilder(tool="pybel_manage_networks", base_command=["pybel", "manage", "networks"], inputs=[ToolInput(tag="in_drop", input_type=String(), position=0, doc=InputDocumentation(doc="Drop a network by its identifier or drop all networks.")), ToolInput(tag="in_ls", input_type=String(), position=1, doc=InputDocumentation(doc="List network names, versions, and optionally, descriptions."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pybel_Manage_Networks_V0_1_0().translate("wdl", allow_empty_container=True)

