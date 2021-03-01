from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Filter_Fp_2S_Py_V0_1_0 = CommandToolBuilder(tool="filter_FP_2s.py", base_command=["filter_FP_2s.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Fp_2S_Py_V0_1_0().translate("wdl", allow_empty_container=True)

