from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Helpers_Py_V0_1_0 = CommandToolBuilder(tool="helpers.py", base_command=["helpers.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mtglink:1.1.0--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Helpers_Py_V0_1_0().translate("wdl")

