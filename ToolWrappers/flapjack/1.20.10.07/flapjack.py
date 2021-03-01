from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Flapjack_V0_1_0 = CommandToolBuilder(tool="flapjack", base_command=["flapjack"], inputs=[], outputs=[], container="quay.io/biocontainers/flapjack:1.20.10.07--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Flapjack_V0_1_0().translate("wdl")

