from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Trycycler_V0_1_0 = CommandToolBuilder(tool="trycycler", base_command=["trycycler"], inputs=[], outputs=[], container="quay.io/biocontainers/trycycler:0.4.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trycycler_V0_1_0().translate("wdl")

