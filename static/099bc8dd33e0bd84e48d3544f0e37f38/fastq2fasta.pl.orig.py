from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq2Fasta_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="fastq2fasta.pl.orig", base_command=["fastq2fasta.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq2Fasta_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

