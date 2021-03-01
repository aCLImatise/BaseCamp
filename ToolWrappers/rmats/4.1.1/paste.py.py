from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Paste_Py_V0_1_0 = CommandToolBuilder(tool="paste.py", base_command=["paste.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rmats:4.1.1--py27h9b06725_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paste_Py_V0_1_0().translate("wdl")

