from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Norm_Distr_Py_V0_1_0 = CommandToolBuilder(tool="norm_distr.py", base_command=["norm_distr.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Norm_Distr_Py_V0_1_0().translate("wdl", allow_empty_container=True)

