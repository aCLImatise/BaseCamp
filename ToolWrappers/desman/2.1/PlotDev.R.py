from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plotdev_R_V0_1_0 = CommandToolBuilder(tool="PlotDev.R", base_command=["PlotDev.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotdev_R_V0_1_0().translate("wdl", allow_empty_container=True)

