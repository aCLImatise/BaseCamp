from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Conduit_V0_1_0 = CommandToolBuilder(tool="conduit", base_command=["conduit"], inputs=[], outputs=[], container="quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Conduit_V0_1_0().translate("wdl")

