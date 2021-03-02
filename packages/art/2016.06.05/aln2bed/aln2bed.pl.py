from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Aln2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="aln2bed.pl", base_command=["aln2bed.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Aln2Bed_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

