from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fast_Reps_Py_V0_1_0 = CommandToolBuilder(tool="fast_reps.py", base_command=["fast_reps.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fast_Reps_Py_V0_1_0().translate("wdl", allow_empty_container=True)

