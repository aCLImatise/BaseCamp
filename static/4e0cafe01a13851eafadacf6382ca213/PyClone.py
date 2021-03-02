from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pyclone_V0_1_0 = CommandToolBuilder(tool="PyClone", base_command=["PyClone"], inputs=[], outputs=[], container="quay.io/biocontainers/pyclone:0.13.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyclone_V0_1_0().translate("wdl")

