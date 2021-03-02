from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Is_Analysis_Py_V0_1_0 = CommandToolBuilder(tool="is_analysis.py", base_command=["is_analysis.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Is_Analysis_Py_V0_1_0().translate("wdl", allow_empty_container=True)

