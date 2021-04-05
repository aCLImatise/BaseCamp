from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ispredict_Py_V0_1_0 = CommandToolBuilder(tool="isPredict.py", base_command=["isPredict.py"], inputs=[], outputs=[], container="quay.io/biocontainers/isescan:1.7.2.2.2--h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ispredict_Py_V0_1_0().translate("wdl")

