from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Fastx_Grep_Py_Input_Fastx_V0_1_0 = CommandToolBuilder(tool="fastx_grep.py_input_fastx", base_command=["fastx_grep.py", "input_fastx"], inputs=[ToolInput(tag="in_n", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_x_grep_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastx_Grep_Py_Input_Fastx_V0_1_0().translate("wdl", allow_empty_container=True)

