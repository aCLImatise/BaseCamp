from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Utils_Py_V0_1_0 = CommandToolBuilder(tool="utils.py", base_command=["utils.py"], inputs=[], outputs=[], container="quay.io/biocontainers/pangolin:2.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Utils_Py_V0_1_0().translate("wdl")

