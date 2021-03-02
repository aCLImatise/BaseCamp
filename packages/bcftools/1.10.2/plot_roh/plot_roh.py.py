from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Roh_Py_V0_1_0 = CommandToolBuilder(tool="plot_roh.py", base_command=["plot-roh.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Roh_Py_V0_1_0().translate("wdl", allow_empty_container=True)

