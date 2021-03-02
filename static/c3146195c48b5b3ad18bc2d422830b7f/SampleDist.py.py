from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sampledist_Py_V0_1_0 = CommandToolBuilder(tool="SampleDist.py", base_command=["SampleDist.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sampledist_Py_V0_1_0().translate("wdl", allow_empty_container=True)

