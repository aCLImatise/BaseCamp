from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Paraclu_V0_1_0 = CommandToolBuilder(tool="paraclu", base_command=["paraclu"], inputs=[], outputs=[], container="quay.io/biocontainers/paraclu:10--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paraclu_V0_1_0().translate("wdl")

