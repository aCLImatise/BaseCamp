from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Split_Fastx_Py_Output_Dir_V0_1_0 = CommandToolBuilder(tool="split_fastx.py_output_dir", base_command=["split_fastx.py", "output_dir"], inputs=[ToolInput(tag="in_b", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_split_fast_x_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Fastx_Py_Output_Dir_V0_1_0().translate("wdl", allow_empty_container=True)

