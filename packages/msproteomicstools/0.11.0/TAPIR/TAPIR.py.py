from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tapir_Py_V0_1_0 = CommandToolBuilder(tool="TAPIR.py", base_command=["TAPIR.py"], inputs=[], outputs=[], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tapir_Py_V0_1_0().translate("wdl")

