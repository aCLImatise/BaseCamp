from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Illumina_To_Fasta_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="illumina_to_fasta.pl.orig", base_command=["illumina_to_fasta.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Illumina_To_Fasta_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

