from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Delta_Filter_Wrapper_Py_V0_1_0 = CommandToolBuilder(tool="delta_filter_wrapper.py", base_command=["delta_filter_wrapper.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Delta_Filter_Wrapper_Py_V0_1_0().translate("wdl", allow_empty_container=True)

