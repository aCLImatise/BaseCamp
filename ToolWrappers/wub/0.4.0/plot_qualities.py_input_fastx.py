from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Plot_Qualities_Py_Input_Fastx_V0_1_0 = CommandToolBuilder(tool="plot_qualities.py_input_fastx", base_command=["plot_qualities.py", "input_fastx"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Qualities_Py_Input_Fastx_V0_1_0().translate("wdl", allow_empty_container=True)

