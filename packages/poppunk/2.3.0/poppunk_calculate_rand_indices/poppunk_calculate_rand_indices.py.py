from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Poppunk_Calculate_Rand_Indices_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_calculate_rand_indices.py", base_command=["poppunk_calculate_rand_indices.py"], inputs=[], outputs=[], container="quay.io/biocontainers/poppunk:2.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Calculate_Rand_Indices_Py_V0_1_0().translate("wdl")

