from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Chisel_Plotting_Py_V0_1_0 = CommandToolBuilder(tool="chisel_plotting.py", base_command=["chisel_plotting.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chisel_Plotting_Py_V0_1_0().translate("wdl", allow_empty_container=True)

