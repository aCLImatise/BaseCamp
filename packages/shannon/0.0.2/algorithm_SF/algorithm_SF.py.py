from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Algorithm_Sf_Py_V0_1_0 = CommandToolBuilder(tool="algorithm_SF.py", base_command=["algorithm_SF.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Algorithm_Sf_Py_V0_1_0().translate("wdl", allow_empty_container=True)

