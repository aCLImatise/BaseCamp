from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Line_Select_Py_V0_1_0 = CommandToolBuilder(tool="line_select.py", base_command=["line_select.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Line_Select_Py_V0_1_0().translate("wdl", allow_empty_container=True)

