from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sumlabels_Py_V0_1_0 = CommandToolBuilder(tool="sumlabels.py", base_command=["sumlabels.py"], inputs=[], outputs=[], container="quay.io/biocontainers/dendropy:4.5.2--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sumlabels_Py_V0_1_0().translate("wdl")

