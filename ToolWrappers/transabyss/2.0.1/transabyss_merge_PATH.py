from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Transabyss_Merge_Path_V0_1_0 = CommandToolBuilder(tool="transabyss_merge_PATH", base_command=["transabyss-merge", "PATH"], inputs=[ToolInput(tag="in_max_k", input_type=Int(optional=True), prefix="--maxk", doc=InputDocumentation(doc="")), ToolInput(tag="in_mink", input_type=Int(optional=True), prefix="--mink", doc=InputDocumentation(doc="")), ToolInput(tag="in_trans_abyss_merge", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transabyss_Merge_Path_V0_1_0().translate("wdl", allow_empty_container=True)

