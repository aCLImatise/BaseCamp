from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Synchain_Mugsy_V0_1_0 = CommandToolBuilder(tool="synchain_mugsy", base_command=["synchain-mugsy"], inputs=[ToolInput(tag="in_mugsy_chaining", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_distance", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_lcb_span", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_stats_len", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Synchain_Mugsy_V0_1_0().translate("wdl", allow_empty_container=True)

