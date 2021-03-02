from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Resolvenhap_Py_V0_1_0 = CommandToolBuilder(tool="resolvenhap.py", base_command=["resolvenhap.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Resolvenhap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

