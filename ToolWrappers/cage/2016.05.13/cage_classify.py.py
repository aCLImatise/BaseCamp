from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cage_Classify_Py_V0_1_0 = CommandToolBuilder(tool="cage_classify.py", base_command=["cage-classify.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cage_Classify_Py_V0_1_0().translate("wdl", allow_empty_container=True)

