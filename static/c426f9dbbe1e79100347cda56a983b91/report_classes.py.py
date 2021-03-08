from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Report_Classes_Py_V0_1_0 = CommandToolBuilder(tool="report_classes.py", base_command=["report_classes.py"], inputs=[], outputs=[], container="quay.io/biocontainers/pangolin:2.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Report_Classes_Py_V0_1_0().translate("wdl")

