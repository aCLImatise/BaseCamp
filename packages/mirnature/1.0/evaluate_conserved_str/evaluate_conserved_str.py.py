from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Evaluate_Conserved_Str_Py_V0_1_0 = CommandToolBuilder(tool="evaluate_conserved_str.py", base_command=["evaluate_conserved_str.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mirnature:1.0--pl5262r35hdfd78af_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Evaluate_Conserved_Str_Py_V0_1_0().translate("wdl")

