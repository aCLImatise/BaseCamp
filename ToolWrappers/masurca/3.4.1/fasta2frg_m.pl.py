from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasta2Frg_M_Pl_V0_1_0 = CommandToolBuilder(tool="fasta2frg_m.pl", base_command=["fasta2frg_m.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Frg_M_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

