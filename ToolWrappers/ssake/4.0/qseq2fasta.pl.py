from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Qseq2Fasta_Pl_V0_1_0 = CommandToolBuilder(tool="qseq2fasta.pl", base_command=["qseq2fasta.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qseq2Fasta_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

