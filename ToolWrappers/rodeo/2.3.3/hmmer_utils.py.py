from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Hmmer_Utils_Py_V0_1_0 = CommandToolBuilder(tool="hmmer_utils.py", base_command=["hmmer_utils.py"], inputs=[], outputs=[], container="quay.io/biocontainers/rodeo:2.3.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmer_Utils_Py_V0_1_0().translate("wdl")

