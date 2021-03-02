from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Bamstats_V0_1_0 = CommandToolBuilder(tool="plot_bamstats", base_command=["plot-bamstats"], inputs=[], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Bamstats_V0_1_0().translate("wdl")

