from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Geo2Fasta_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="geo2fasta.pl.orig", base_command=["geo2fasta.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Geo2Fasta_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

