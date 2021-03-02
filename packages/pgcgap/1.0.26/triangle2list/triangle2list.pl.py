from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Triangle2List_Pl_V0_1_0 = CommandToolBuilder(tool="triangle2list.pl", base_command=["triangle2list.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Triangle2List_Pl_V0_1_0().translate("wdl")

