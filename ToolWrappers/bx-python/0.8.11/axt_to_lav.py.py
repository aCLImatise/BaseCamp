from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Axt_To_Lav_Py_V0_1_0 = CommandToolBuilder(tool="axt_to_lav.py", base_command=["axt_to_lav.py"], inputs=[], outputs=[], container="quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Axt_To_Lav_Py_V0_1_0().translate("wdl")

