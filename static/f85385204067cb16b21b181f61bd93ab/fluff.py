from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fluff_V0_1_0 = CommandToolBuilder(tool="fluff", base_command=["fluff"], inputs=[], outputs=[], container="quay.io/biocontainers/biofluff:3.0.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fluff_V0_1_0().translate("wdl")

