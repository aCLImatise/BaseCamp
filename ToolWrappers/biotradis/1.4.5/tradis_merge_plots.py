from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tradis_Merge_Plots_V0_1_0 = CommandToolBuilder(tool="tradis_merge_plots", base_command=["tradis_merge_plots"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tradis_Merge_Plots_V0_1_0().translate("wdl", allow_empty_container=True)

