from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ovc_Py_V0_1_0 = CommandToolBuilder(tool="ovc.py", base_command=["ovc.py"], inputs=[], outputs=[], container="quay.io/biocontainers/hap.py:0.3.14--py27h5c5a3ab_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ovc_Py_V0_1_0().translate("wdl")

