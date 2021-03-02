from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Batch_Brb_Functions_Py_V0_1_0 = CommandToolBuilder(tool="batch_brb_functions.py", base_command=["batch_brb_functions.py"], inputs=[], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Batch_Brb_Functions_Py_V0_1_0().translate("wdl")

