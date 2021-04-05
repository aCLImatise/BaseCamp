from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Constants_Py_V0_1_0 = CommandToolBuilder(tool="constants.py", base_command=["constants.py"], inputs=[], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Constants_Py_V0_1_0().translate("wdl")

