from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Stats_Summary_Pl_V0_1_0 = CommandToolBuilder(tool="get_stats_summary.pl", base_command=["get_stats_summary.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Stats_Summary_Pl_V0_1_0().translate("wdl")

