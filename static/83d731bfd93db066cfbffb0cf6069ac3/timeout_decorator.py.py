from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Timeout_Decorator_Py_V0_1_0 = CommandToolBuilder(tool="timeout_decorator.py", base_command=["timeout_decorator.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rodeo:2.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Timeout_Decorator_Py_V0_1_0().translate("wdl")

