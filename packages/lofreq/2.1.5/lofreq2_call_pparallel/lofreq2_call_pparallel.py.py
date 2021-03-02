from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Lofreq2_Call_Pparallel_Py_V0_1_0 = CommandToolBuilder(tool="lofreq2_call_pparallel.py", base_command=["lofreq2_call_pparallel.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lofreq2_Call_Pparallel_Py_V0_1_0().translate("wdl", allow_empty_container=True)

