from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Extract_Seq_Py_V0_1_0 = CommandToolBuilder(tool="extract_seq.py", base_command=["extract_seq.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Seq_Py_V0_1_0().translate("wdl")

