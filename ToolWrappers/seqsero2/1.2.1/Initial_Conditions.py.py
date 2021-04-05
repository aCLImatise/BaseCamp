from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Initial_Conditions_Py_V0_1_0 = CommandToolBuilder(tool="Initial_Conditions.py", base_command=["Initial_Conditions.py"], inputs=[], outputs=[], container="quay.io/biocontainers/seqsero2:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Initial_Conditions_Py_V0_1_0().translate("wdl")

