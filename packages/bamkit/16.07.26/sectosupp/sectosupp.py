from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sectosupp_V0_1_0 = CommandToolBuilder(tool="sectosupp", base_command=["sectosupp"], inputs=[], outputs=[], container="quay.io/biocontainers/bamkit:16.07.26--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sectosupp_V0_1_0().translate("wdl")

