from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Orthomclsortgroupmembersbyscore_V0_1_0 = CommandToolBuilder(tool="orthomclSortGroupMembersByScore", base_command=["orthomclSortGroupMembersByScore"], inputs=[ToolInput(tag="in_co_orthologs_dot_txt", input_type=String(), position=0, doc=InputDocumentation(doc="Output:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Orthomclsortgroupmembersbyscore_V0_1_0().translate("wdl", allow_empty_container=True)

