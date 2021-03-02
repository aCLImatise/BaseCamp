from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lingenome_V0_1_0 = CommandToolBuilder(tool="lingenome", base_command=["lingenome"], inputs=[], outputs=[], container="quay.io/biocontainers/burst:v1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lingenome_V0_1_0().translate("wdl")

