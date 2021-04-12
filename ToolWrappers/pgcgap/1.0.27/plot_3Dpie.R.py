from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_3Dpie_R_V0_1_0 = CommandToolBuilder(tool="plot_3Dpie.R", base_command=["plot_3Dpie.R"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_3Dpie_R_V0_1_0().translate("wdl")

