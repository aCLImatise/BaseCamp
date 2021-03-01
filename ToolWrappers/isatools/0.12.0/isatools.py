from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Isatools_V0_1_0 = CommandToolBuilder(tool="isatools", base_command=["isatools"], inputs=[], outputs=[], container="quay.io/biocontainers/isatools:0.12.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isatools_V0_1_0().translate("wdl")

