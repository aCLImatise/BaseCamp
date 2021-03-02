from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wr_Hier_Py_V0_1_0 = CommandToolBuilder(tool="wr_hier.py", base_command=["wr_hier.py"], inputs=[], outputs=[], container="quay.io/biocontainers/goatools:1.0.15--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wr_Hier_Py_V0_1_0().translate("wdl")

