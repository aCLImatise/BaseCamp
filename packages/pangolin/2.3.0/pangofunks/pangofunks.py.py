from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pangofunks_Py_V0_1_0 = CommandToolBuilder(tool="pangofunks.py", base_command=["pangofunks.py"], inputs=[], outputs=[], container="quay.io/biocontainers/pangolin:2.3.0--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pangofunks_Py_V0_1_0().translate("wdl")

