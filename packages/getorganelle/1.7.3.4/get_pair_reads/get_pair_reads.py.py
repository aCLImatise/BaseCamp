from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Pair_Reads_Py_V0_1_0 = CommandToolBuilder(tool="get_pair_reads.py", base_command=["get_pair_reads.py"], inputs=[], outputs=[], container="quay.io/biocontainers/getorganelle:1.7.3.4--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Pair_Reads_Py_V0_1_0().translate("wdl")

