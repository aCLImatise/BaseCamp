from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Process_Reads_V0_1_0 = CommandToolBuilder(tool="process_reads", base_command=["process_reads"], inputs=[], outputs=[], container="quay.io/biocontainers/metaclassifier:v1.0.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Process_Reads_V0_1_0().translate("wdl")

