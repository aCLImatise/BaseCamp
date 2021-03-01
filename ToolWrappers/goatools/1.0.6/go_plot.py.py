from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Go_Plot_Py_V0_1_0 = CommandToolBuilder(tool="go_plot.py", base_command=["go_plot.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Go_Plot_Py_V0_1_0().translate("wdl", allow_empty_container=True)

