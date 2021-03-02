from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sandbag_V0_1_0 = CommandToolBuilder(tool="sandbag", base_command=["sandbag"], inputs=[], outputs=[], container="quay.io/biocontainers/pypairs:3.2.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sandbag_V0_1_0().translate("wdl")

