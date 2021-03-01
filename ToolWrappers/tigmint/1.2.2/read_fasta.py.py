from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Read_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="read_fasta.py", base_command=["read_fasta.py"], inputs=[], outputs=[], container="quay.io/biocontainers/tigmint:1.2.2--py_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Read_Fasta_Py_V0_1_0().translate("wdl")

