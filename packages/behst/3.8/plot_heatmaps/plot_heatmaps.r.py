from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Heatmaps_R_V0_1_0 = CommandToolBuilder(tool="plot_heatmaps.r", base_command=["plot_heatmaps.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Heatmaps_R_V0_1_0().translate("wdl", allow_empty_container=True)

