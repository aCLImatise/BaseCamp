from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rename_Fasta_Seqid_Py_V0_1_0 = CommandToolBuilder(tool="rename_fasta_seqID.py", base_command=["rename_fasta_seqID.py"], inputs=[], outputs=[], container="quay.io/biocontainers/mitofinder:1.4--py27h516909a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rename_Fasta_Seqid_Py_V0_1_0().translate("wdl")

