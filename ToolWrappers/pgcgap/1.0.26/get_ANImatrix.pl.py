from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Animatrix_Pl_V0_1_0 = CommandToolBuilder(tool="get_ANImatrix.pl", base_command=["get_ANImatrix.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Animatrix_Pl_V0_1_0().translate("wdl")

