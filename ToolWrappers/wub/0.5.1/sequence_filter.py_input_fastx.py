from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Sequence_Filter_Py_Input_Fastx_V0_1_0 = CommandToolBuilder(tool="sequence_filter.py_input_fastx", base_command=["sequence_filter.py", "input_fastx"], inputs=[ToolInput(tag="in_q", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_filter_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Filter_Py_Input_Fastx_V0_1_0().translate("wdl")

