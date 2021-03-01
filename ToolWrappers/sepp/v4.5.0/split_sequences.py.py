from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Split_Sequences_Py_V0_1_0 = CommandToolBuilder(tool="split_sequences.py", base_command=["split_sequences.py"], inputs=[], outputs=[], container="quay.io/biocontainers/sepp:v4.5.0--py37_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Sequences_Py_V0_1_0().translate("wdl")

