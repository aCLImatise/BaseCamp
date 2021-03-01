from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasta_Prot_Checker_Pl_V0_1_0 = CommandToolBuilder(tool="fasta_prot_checker.pl", base_command=["fasta_prot_checker.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Prot_Checker_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

