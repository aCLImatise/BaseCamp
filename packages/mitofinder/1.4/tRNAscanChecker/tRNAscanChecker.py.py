from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trnascanchecker_Py_V0_1_0 = CommandToolBuilder(tool="tRNAscanChecker.py", base_command=["tRNAscanChecker.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trnascanchecker_Py_V0_1_0().translate("wdl")

