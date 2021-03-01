from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cvrep_V0_1_0 = CommandToolBuilder(tool="cvrep", base_command=["cvrep"], inputs=[], outputs=[], container="quay.io/biocontainers/phylobayes-mpi:1.8c--h78e549b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cvrep_V0_1_0().translate("wdl")

