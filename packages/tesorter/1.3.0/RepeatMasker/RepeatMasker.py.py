from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Repeatmasker_Py_V0_1_0 = CommandToolBuilder(tool="RepeatMasker.py", base_command=["RepeatMasker.py"], inputs=[], outputs=[], container="quay.io/biocontainers/tesorter:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Repeatmasker_Py_V0_1_0().translate("wdl")

