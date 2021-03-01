from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Svm_Easy_Py_V0_1_0 = CommandToolBuilder(tool="svm_easy.py", base_command=["svm-easy.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svm_Easy_Py_V0_1_0().translate("wdl", allow_empty_container=True)

