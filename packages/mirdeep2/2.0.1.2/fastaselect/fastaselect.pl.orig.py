from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastaselect_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="fastaselect.pl.orig", base_command=["fastaselect.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaselect_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

