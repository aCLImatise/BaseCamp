from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wtjack_Pl_V0_1_0 = CommandToolBuilder(tool="wtjack.pl", base_command=["wtjack.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/admixtools:7.0.1--h1d3628b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wtjack_Pl_V0_1_0().translate("wdl")

