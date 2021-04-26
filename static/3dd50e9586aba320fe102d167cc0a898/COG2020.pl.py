from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cog2020_Pl_V0_1_0 = CommandToolBuilder(tool="COG2020.pl", base_command=["COG2020.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/pgcgap:1.0.28--py37pl5262hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cog2020_Pl_V0_1_0().translate("wdl")

