from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Setup_Py_V0_1_0 = CommandToolBuilder(tool="setup.py", base_command=["setup.py"], inputs=[], outputs=[], container="quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Setup_Py_V0_1_0().translate("wdl")

