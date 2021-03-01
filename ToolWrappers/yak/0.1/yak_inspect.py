from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Yak_Inspect_V0_1_0 = CommandToolBuilder(tool="yak_inspect", base_command=["yak", "inspect"], inputs=[ToolInput(tag="in_max_count_effective", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="max count (effective with in2.yak) [20]")), ToolInput(tag="in_in_one_dot_yak", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_yak", input_type=Int(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/yak:0.1--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yak_Inspect_V0_1_0().translate("wdl")

