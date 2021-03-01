from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pilercr_V0_1_0 = CommandToolBuilder(tool="pilercr", base_command=["pilercr"], inputs=[], outputs=[], container="quay.io/biocontainers/piler-cr:1.06--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pilercr_V0_1_0().translate("wdl")

