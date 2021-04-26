from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Groups_Get_Group_Creator_V0_1_0 = CommandToolBuilder(tool="arrow_groups_get_group_creator", base_command=["arrow", "groups", "get_group_creator"], inputs=[ToolInput(tag="in_group", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/apollo:4.2.11--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Groups_Get_Group_Creator_V0_1_0().translate("wdl")

