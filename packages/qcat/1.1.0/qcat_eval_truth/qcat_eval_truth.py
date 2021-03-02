from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Qcat_Eval_Truth_V0_1_0 = CommandToolBuilder(tool="qcat_eval_truth", base_command=["qcat-eval-truth"], inputs=[ToolInput(tag="in_max", input_type=Int(optional=True), prefix="--max", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcat_Eval_Truth_V0_1_0().translate("wdl", allow_empty_container=True)

