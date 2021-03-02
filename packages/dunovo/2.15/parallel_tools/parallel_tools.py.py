from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Parallel_Tools_Py_V0_1_0 = CommandToolBuilder(tool="parallel_tools.py", base_command=["parallel_tools.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parallel_Tools_Py_V0_1_0().translate("wdl", allow_empty_container=True)

