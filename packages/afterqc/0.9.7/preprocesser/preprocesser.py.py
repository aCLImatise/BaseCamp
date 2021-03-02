from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Preprocesser_Py_V0_1_0 = CommandToolBuilder(tool="preprocesser.py", base_command=["preprocesser.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Preprocesser_Py_V0_1_0().translate("wdl", allow_empty_container=True)

