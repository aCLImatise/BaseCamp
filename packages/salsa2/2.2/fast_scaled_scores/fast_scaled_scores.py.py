from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fast_Scaled_Scores_Py_V0_1_0 = CommandToolBuilder(tool="fast_scaled_scores.py", base_command=["fast_scaled_scores.py"], inputs=[], outputs=[], container="quay.io/biocontainers/salsa2:2.2--py27h78a066a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fast_Scaled_Scores_Py_V0_1_0().translate("wdl")

