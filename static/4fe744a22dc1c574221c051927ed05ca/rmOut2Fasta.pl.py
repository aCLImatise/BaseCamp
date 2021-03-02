from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rmout2Fasta_Pl_V0_1_0 = CommandToolBuilder(tool="rmOut2Fasta.pl", base_command=["rmOut2Fasta.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/repeatmasker:4.1.1--pl526_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmout2Fasta_Pl_V0_1_0().translate("wdl")

