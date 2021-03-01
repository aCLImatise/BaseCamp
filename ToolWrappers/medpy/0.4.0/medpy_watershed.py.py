from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Medpy_Watershed_Py_V0_1_0 = CommandToolBuilder(tool="medpy_watershed.py", base_command=["medpy_watershed.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Medpy_Watershed_Py_V0_1_0().translate("wdl", allow_empty_container=True)

