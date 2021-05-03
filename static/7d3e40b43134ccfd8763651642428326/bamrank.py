from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamrank_V0_1_0 = CommandToolBuilder(tool="bamrank", base_command=["bamrank"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamrank_V0_1_0().translate("wdl")

