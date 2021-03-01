from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Coolbox_V0_1_0 = CommandToolBuilder(tool="coolbox", base_command=["coolbox"], inputs=[], outputs=[], container="quay.io/biocontainers/coolbox:0.3.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_V0_1_0().translate("wdl")

