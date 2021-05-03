from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fegenie_Py_V0_1_0 = CommandToolBuilder(tool="FeGenie.py", base_command=["FeGenie.py"], inputs=[], outputs=[], container="quay.io/biocontainers/fegenie:1.0--py39r40hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fegenie_Py_V0_1_0().translate("wdl")

