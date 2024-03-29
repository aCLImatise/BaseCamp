from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Sequence_Subtract_Py_Input_Fastx_Target_V0_1_0 = CommandToolBuilder(tool="sequence_subtract.py_input_fastx_target", base_command=["sequence_subtract.py", "input_fastx_target"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_sequence_subtract_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequence_Subtract_Py_Input_Fastx_Target_V0_1_0().translate("wdl", allow_empty_container=True)

