from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Blockclust_Plot_R_V0_1_0 = CommandToolBuilder(tool="blockclust_plot.r", base_command=["blockclust_plot.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Blockclust_Plot_R_V0_1_0().translate("wdl", allow_empty_container=True)

