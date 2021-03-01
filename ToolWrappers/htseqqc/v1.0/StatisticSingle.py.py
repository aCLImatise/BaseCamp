from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Statisticsingle_Py_V0_1_0 = CommandToolBuilder(tool="StatisticSingle.py", base_command=["StatisticSingle.py"], inputs=[], outputs=[], container="quay.io/biocontainers/htseqqc:v1.0--pyh5bfb8f1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Statisticsingle_Py_V0_1_0().translate("wdl")

