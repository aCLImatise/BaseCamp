from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bondtype_Orig_V0_1_0 = CommandToolBuilder(tool="bondtype.orig", base_command=["bondtype.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bondtype_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

