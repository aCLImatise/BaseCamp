from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Classify_Reads_V0_1_0 = CommandToolBuilder(tool="classify_reads", base_command=["classify_reads"], inputs=[], outputs=[], container="quay.io/biocontainers/metaclassifier:v1.0.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classify_Reads_V0_1_0().translate("wdl")

