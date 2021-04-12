from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Tools_Py_V0_1_0 = CommandToolBuilder(tool="tools.py", base_command=["tools.py"], inputs=[], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.3--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tools_Py_V0_1_0().translate("wdl")

