from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, String, Int

T2Gg_V0_1_0 = CommandToolBuilder(tool="t2gg", base_command=["t2gg"], inputs=[ToolInput(tag="in_v_zero_dot_eight", input_type=Float(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_nodes_dot_dmp", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_names_dot_dmp", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_tid_two_gg_dot_txt", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/burst:v1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    T2Gg_V0_1_0().translate("wdl")

