from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pred_Py_V0_1_0 = CommandToolBuilder(tool="pred.py", base_command=["pred.py"], inputs=[], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pred_Py_V0_1_0().translate("wdl")

