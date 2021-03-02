from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compute_Score_Nogrid_R_V0_1_0 = CommandToolBuilder(tool="compute_score_nogrid.R", base_command=["compute_score-nogrid.R"], inputs=[], outputs=[], container="quay.io/biocontainers/chromeister:1.5.a--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compute_Score_Nogrid_R_V0_1_0().translate("wdl")

