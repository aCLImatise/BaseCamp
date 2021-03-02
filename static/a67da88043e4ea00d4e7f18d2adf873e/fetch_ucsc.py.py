from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fetch_Ucsc_Py_V0_1_0 = CommandToolBuilder(tool="fetch_ucsc.py", base_command=["fetch_ucsc.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetch_Ucsc_Py_V0_1_0().translate("wdl", allow_empty_container=True)

