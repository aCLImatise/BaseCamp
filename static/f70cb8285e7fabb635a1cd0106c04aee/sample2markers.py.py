from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sample2Markers_Py_V0_1_0 = CommandToolBuilder(tool="sample2markers.py", base_command=["sample2markers.py"], inputs=[], outputs=[], container="quay.io/biocontainers/metaphlan:3.0.8--pyhb7b1952_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample2Markers_Py_V0_1_0().translate("wdl")

