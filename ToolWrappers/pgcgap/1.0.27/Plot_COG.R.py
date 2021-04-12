from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plot_Cog_R_V0_1_0 = CommandToolBuilder(tool="Plot_COG.R", base_command=["Plot_COG.R"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plot_Cog_R_V0_1_0().translate("wdl")

