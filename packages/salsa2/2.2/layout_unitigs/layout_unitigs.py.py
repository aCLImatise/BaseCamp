from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Layout_Unitigs_Py_V0_1_0 = CommandToolBuilder(tool="layout_unitigs.py", base_command=["layout_unitigs.py"], inputs=[], outputs=[], container="quay.io/biocontainers/salsa2:2.2--py27h78a066a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Layout_Unitigs_Py_V0_1_0().translate("wdl")

