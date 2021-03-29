from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Contamination_V0_1_0 = CommandToolBuilder(tool="contamination", base_command=["contamination"], inputs=[], outputs=[], container="quay.io/biocontainers/angsd:0.935--hd2e4403_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Contamination_V0_1_0().translate("wdl")

