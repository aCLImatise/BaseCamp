from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Removebadseq_Pl_V0_1_0 = CommandToolBuilder(tool="removeBadSeq.pl", base_command=["removeBadSeq.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Removebadseq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

