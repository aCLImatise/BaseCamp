from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Simulate_Reads_Py_V0_1_0 = CommandToolBuilder(tool="simulate_reads.py", base_command=["simulate_reads.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Simulate_Reads_Py_V0_1_0().translate("wdl", allow_empty_container=True)

