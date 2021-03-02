from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Readpb_Mpi_V0_1_0 = CommandToolBuilder(tool="readpb_mpi", base_command=["readpb_mpi"], inputs=[], outputs=[], container="quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Readpb_Mpi_V0_1_0().translate("wdl")

