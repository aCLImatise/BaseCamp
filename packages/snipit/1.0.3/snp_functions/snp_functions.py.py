from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Snp_Functions_Py_V0_1_0 = CommandToolBuilder(tool="snp_functions.py", base_command=["snp_functions.py"], inputs=[], outputs=[], container="quay.io/biocontainers/snipit:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Snp_Functions_Py_V0_1_0().translate("wdl")

