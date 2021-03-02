from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sonnet_Sad_Multi_Py_V0_1_0 = CommandToolBuilder(tool="sonnet_sad_multi.py", base_command=["sonnet_sad_multi.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sonnet_Sad_Multi_Py_V0_1_0().translate("wdl")

