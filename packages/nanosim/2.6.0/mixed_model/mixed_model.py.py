from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mixed_Model_Py_V0_1_0 = CommandToolBuilder(tool="mixed_model.py", base_command=["mixed_model.py"], inputs=[], outputs=[], container="quay.io/biocontainers/nanosim:2.6.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mixed_Model_Py_V0_1_0().translate("wdl")

