from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Simpjack2_V0_1_0 = CommandToolBuilder(tool="simpjack2", base_command=["simpjack2"], inputs=[], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simpjack2_V0_1_0().translate("wdl")

