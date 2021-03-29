from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Truspades_Py_V0_1_0 = CommandToolBuilder(tool="truspades.py", base_command=["truspades.py"], inputs=[], outputs=[], container="quay.io/biocontainers/spades:3.15.2--h633aebb_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Truspades_Py_V0_1_0().translate("wdl")

