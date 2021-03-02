from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bed_Coverage_Py_V0_1_0 = CommandToolBuilder(tool="bed_coverage.py", base_command=["bed_coverage.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed_Coverage_Py_V0_1_0().translate("wdl", allow_empty_container=True)

