from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Basenji_Predict_Bed_Multi_Py_V0_1_0 = CommandToolBuilder(tool="basenji_predict_bed_multi.py", base_command=["basenji_predict_bed_multi.py"], inputs=[], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Basenji_Predict_Bed_Multi_Py_V0_1_0().translate("wdl")

