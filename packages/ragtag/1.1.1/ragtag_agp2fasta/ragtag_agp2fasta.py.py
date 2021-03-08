from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ragtag_Agp2Fasta_Py_V0_1_0 = CommandToolBuilder(tool="ragtag_agp2fasta.py", base_command=["ragtag_agp2fasta.py"], inputs=[], outputs=[], container="quay.io/biocontainers/ragtag:1.1.1--pyh7b7c402_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragtag_Agp2Fasta_Py_V0_1_0().translate("wdl")

