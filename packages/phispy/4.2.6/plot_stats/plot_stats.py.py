from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Stats_Py_V0_1_0 = CommandToolBuilder(tool="plot_stats.py", base_command=["plot_stats.py"], inputs=[], outputs=[], container="quay.io/biocontainers/phispy:4.2.6--py38hed8969a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Stats_Py_V0_1_0().translate("wdl")

