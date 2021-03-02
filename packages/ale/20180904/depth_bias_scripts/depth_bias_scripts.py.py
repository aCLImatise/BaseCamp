from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Depth_Bias_Scripts_Py_V0_1_0 = CommandToolBuilder(tool="depth_bias_scripts.py", base_command=["depth_bias_scripts.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Depth_Bias_Scripts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

