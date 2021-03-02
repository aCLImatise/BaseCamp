from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Report_Results_Py_V0_1_0 = CommandToolBuilder(tool="report_results.py", base_command=["report_results.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Report_Results_Py_V0_1_0().translate("wdl", allow_empty_container=True)

