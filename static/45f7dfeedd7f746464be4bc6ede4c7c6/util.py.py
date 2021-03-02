from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Util_Py_V0_1_0 = CommandToolBuilder(tool="util.py", base_command=["util.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Util_Py_V0_1_0().translate("wdl", allow_empty_container=True)

