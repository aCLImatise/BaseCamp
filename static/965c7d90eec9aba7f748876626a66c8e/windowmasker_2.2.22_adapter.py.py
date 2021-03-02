from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Windowmasker_2_2_22_Adapter_Py_V0_1_0 = CommandToolBuilder(tool="windowmasker_2.2.22_adapter.py", base_command=["windowmasker_2.2.22_adapter.py"], inputs=[], outputs=[], container="quay.io/biocontainers/blast:2.10.1--pl526he19e7b1_3", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Windowmasker_2_2_22_Adapter_Py_V0_1_0().translate("wdl")

