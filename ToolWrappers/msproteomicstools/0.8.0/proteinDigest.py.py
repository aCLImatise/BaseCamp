from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Proteindigest_Py_V0_1_0 = CommandToolBuilder(tool="proteinDigest.py", base_command=["proteinDigest.py"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Proteindigest_Py_V0_1_0().translate("wdl", allow_empty_container=True)

