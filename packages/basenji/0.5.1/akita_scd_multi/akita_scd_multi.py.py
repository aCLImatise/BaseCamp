from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Akita_Scd_Multi_Py_V0_1_0 = CommandToolBuilder(tool="akita_scd_multi.py", base_command=["akita_scd_multi.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Akita_Scd_Multi_Py_V0_1_0().translate("wdl")

