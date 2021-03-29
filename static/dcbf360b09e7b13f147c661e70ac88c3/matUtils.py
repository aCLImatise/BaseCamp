from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Matutils_V0_1_0 = CommandToolBuilder(tool="matUtils", base_command=["matUtils"], inputs=[], outputs=[], container="quay.io/biocontainers/usher:0.2.0--hfcd16c1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matutils_V0_1_0().translate("wdl")

