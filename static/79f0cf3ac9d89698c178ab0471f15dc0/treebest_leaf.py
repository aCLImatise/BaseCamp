from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Treebest_Leaf_V0_1_0 = CommandToolBuilder(tool="treebest_leaf", base_command=["treebest", "leaf"], inputs=[ToolInput(tag="in_nh_tree", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Treebest_Leaf_V0_1_0().translate("wdl", allow_empty_container=True)

