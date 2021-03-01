from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Example_Footprint_Scores_Py_V0_1_0 = CommandToolBuilder(tool="example_footprint_scores.py", base_command=["example_footprint_scores.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Example_Footprint_Scores_Py_V0_1_0().translate("wdl", allow_empty_container=True)

