from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clair_Py_V0_1_0 = CommandToolBuilder(tool="clair.py", base_command=["clair.py"], inputs=[], outputs=[], container="quay.io/biocontainers/clair:2.1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clair_Py_V0_1_0().translate("wdl")

