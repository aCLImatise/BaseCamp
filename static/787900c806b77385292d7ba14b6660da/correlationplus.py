from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Correlationplus_V0_1_0 = CommandToolBuilder(tool="correlationplus", base_command=["correlationplus"], inputs=[], outputs=[], container="quay.io/biocontainers/correlationplus:0.1.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Correlationplus_V0_1_0().translate("wdl")

