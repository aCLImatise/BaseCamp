from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Prepare_Reference_Py_V0_1_0 = CommandToolBuilder(tool="prepare_reference.py", base_command=["prepare_reference.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Prepare_Reference_Py_V0_1_0().translate("wdl", allow_empty_container=True)

