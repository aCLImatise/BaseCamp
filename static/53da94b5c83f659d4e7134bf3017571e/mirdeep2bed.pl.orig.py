from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mirdeep2Bed_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="mirdeep2bed.pl.orig", base_command=["mirdeep2bed.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirdeep2Bed_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

