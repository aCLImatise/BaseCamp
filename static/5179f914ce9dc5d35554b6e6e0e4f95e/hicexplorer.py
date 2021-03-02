from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hicexplorer_V0_1_0 = CommandToolBuilder(tool="hicexplorer", base_command=["hicexplorer"], inputs=[], outputs=[], container="quay.io/biocontainers/hicexplorer:3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicexplorer_V0_1_0().translate("wdl")

