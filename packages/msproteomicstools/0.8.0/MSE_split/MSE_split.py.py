from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mse_Split_Py_V0_1_0 = CommandToolBuilder(tool="MSE_split.py", base_command=["MSE_split.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mse_Split_Py_V0_1_0().translate("wdl", allow_empty_container=True)

