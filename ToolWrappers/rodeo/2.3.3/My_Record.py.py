from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


My_Record_Py_V0_1_0 = CommandToolBuilder(tool="My_Record.py", base_command=["My_Record.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rodeo:2.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    My_Record_Py_V0_1_0().translate("wdl")

