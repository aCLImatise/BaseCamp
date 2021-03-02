from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Unfiltered_Plot_R_V0_1_0 = CommandToolBuilder(tool="unfiltered_plot.R", base_command=["unfiltered_plot.R"], inputs=[], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Unfiltered_Plot_R_V0_1_0().translate("wdl")

