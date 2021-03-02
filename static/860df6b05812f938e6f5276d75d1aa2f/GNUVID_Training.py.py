from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gnuvid_Training_Py_V0_1_0 = CommandToolBuilder(tool="GNUVID_Training.py", base_command=["GNUVID_Training.py"], inputs=[], outputs=[], container="quay.io/biocontainers/gnuvid:2.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnuvid_Training_Py_V0_1_0().translate("wdl")

