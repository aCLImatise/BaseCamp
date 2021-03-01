from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clip_Adapters_Pl_Orig_V0_1_0 = CommandToolBuilder(tool="clip_adapters.pl.orig", base_command=["clip_adapters.pl.orig"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clip_Adapters_Pl_Orig_V0_1_0().translate("wdl", allow_empty_container=True)

