from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Plotdatastats_Py_V0_1_0 = CommandToolBuilder(tool="plotDataStats.py", base_command=["plotDataStats.py"], inputs=[], outputs=[], container="quay.io/biocontainers/reseq:1.1--py38h56fca86_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Plotdatastats_Py_V0_1_0().translate("wdl")

