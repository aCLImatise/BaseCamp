from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mono_Find_Requires_V0_1_0 = CommandToolBuilder(tool="mono_find_requires", base_command=["mono-find-requires"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mono_Find_Requires_V0_1_0().translate("wdl", allow_empty_container=True)

