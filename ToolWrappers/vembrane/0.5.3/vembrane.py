from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Vembrane_V0_1_0 = CommandToolBuilder(tool="vembrane", base_command=["vembrane"], inputs=[], outputs=[], container="quay.io/biocontainers/vembrane:0.5.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vembrane_V0_1_0().translate("wdl")

