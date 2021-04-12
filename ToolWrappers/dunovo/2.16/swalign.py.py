from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Swalign_Py_V0_1_0 = CommandToolBuilder(tool="swalign.py", base_command=["swalign.py"], inputs=[], outputs=[], container="quay.io/biocontainers/dunovo:2.16--py39h38f01e4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Swalign_Py_V0_1_0().translate("wdl")

