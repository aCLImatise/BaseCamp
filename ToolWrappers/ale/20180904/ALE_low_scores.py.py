from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ale_Low_Scores_Py_V0_1_0 = CommandToolBuilder(tool="ALE_low_scores.py", base_command=["ALE_low_scores.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ale_Low_Scores_Py_V0_1_0().translate("wdl", allow_empty_container=True)

