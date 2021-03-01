from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pivotcsv_Py_V0_1_0 = CommandToolBuilder(tool="pivotCSV.py", base_command=["pivotCSV.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pivotcsv_Py_V0_1_0().translate("wdl", allow_empty_container=True)

