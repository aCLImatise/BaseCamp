from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasta2Revcom_Pl_V0_1_0 = CommandToolBuilder(tool="fasta2revcom.pl", base_command=["fasta2revcom.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Revcom_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

