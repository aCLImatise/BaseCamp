from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Record_Processing_Py_V0_1_0 = CommandToolBuilder(tool="record_processing.py", base_command=["record_processing.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rodeo:2.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Record_Processing_Py_V0_1_0().translate("wdl")

