from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Head_Align_Tail_Dist_Py_V0_1_0 = CommandToolBuilder(tool="head_align_tail_dist.py", base_command=["head_align_tail_dist.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Head_Align_Tail_Dist_Py_V0_1_0().translate("wdl", allow_empty_container=True)

