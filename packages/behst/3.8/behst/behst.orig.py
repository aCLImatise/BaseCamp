from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Behst_Orig_V0_1_0 = CommandToolBuilder(tool="behst.orig", base_command=["behst.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Behst_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

