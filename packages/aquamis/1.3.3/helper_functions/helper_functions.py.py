from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Helper_Functions_Py_V0_1_0 = CommandToolBuilder(tool="helper_functions.py", base_command=["helper_functions.py"], inputs=[], outputs=[], container="quay.io/biocontainers/aquamis:1.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Helper_Functions_Py_V0_1_0().translate("wdl")

