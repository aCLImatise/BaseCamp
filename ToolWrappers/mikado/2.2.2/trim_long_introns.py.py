from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trim_Long_Introns_Py_V0_1_0 = CommandToolBuilder(tool="trim_long_introns.py", base_command=["trim_long_introns.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mikado:2.2.2--py37hfa133b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trim_Long_Introns_Py_V0_1_0().translate("wdl")

