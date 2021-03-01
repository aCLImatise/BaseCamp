from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makeblastdb_V0_1_0 = CommandToolBuilder(tool="makeblastdb", base_command=["makeblastdb"], inputs=[], outputs=[], container="quay.io/biocontainers/blast:2.10.1--pl526he19e7b1_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeblastdb_V0_1_0().translate("wdl")

