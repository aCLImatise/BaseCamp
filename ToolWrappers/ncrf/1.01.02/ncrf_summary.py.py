from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ncrf_Summary_Py_V0_1_0 = CommandToolBuilder(tool="ncrf_summary.py", base_command=["ncrf_summary.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ncrf_Summary_Py_V0_1_0().translate("wdl", allow_empty_container=True)

