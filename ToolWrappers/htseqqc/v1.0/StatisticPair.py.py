from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Statisticpair_Py_V0_1_0 = CommandToolBuilder(tool="StatisticPair.py", base_command=["StatisticPair.py"], inputs=[], outputs=[], container="quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Statisticpair_Py_V0_1_0().translate("wdl")

