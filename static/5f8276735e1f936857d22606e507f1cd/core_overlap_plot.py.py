from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Core_Overlap_Plot_Py_V0_1_0 = CommandToolBuilder(tool="core_overlap_plot.py", base_command=["core_overlap_plot.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Core_Overlap_Plot_Py_V0_1_0().translate("wdl", allow_empty_container=True)

