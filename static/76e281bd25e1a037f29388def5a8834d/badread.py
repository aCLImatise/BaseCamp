from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Badread_V0_1_0 = CommandToolBuilder(tool="badread", base_command=["badread"], inputs=[], outputs=[], container="quay.io/biocontainers/badread:0.2.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Badread_V0_1_0().translate("wdl")

