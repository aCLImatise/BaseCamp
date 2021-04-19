from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Termcombinationlib_Py_V0_1_0 = CommandToolBuilder(tool="termCombinationLib.py", base_command=["termCombinationLib.py"], inputs=[], outputs=[], container="quay.io/biocontainers/orsum:1.0.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Termcombinationlib_Py_V0_1_0().translate("wdl")

