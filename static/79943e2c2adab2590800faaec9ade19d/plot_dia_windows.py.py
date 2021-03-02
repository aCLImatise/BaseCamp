from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Plot_Dia_Windows_Py_V0_1_0 = CommandToolBuilder(tool="plot_dia_windows.py", base_command=["plot_dia_windows.py"], inputs=[ToolInput(tag="in_window_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_precursor_map", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Dia_Windows_Py_V0_1_0().translate("wdl", allow_empty_container=True)

