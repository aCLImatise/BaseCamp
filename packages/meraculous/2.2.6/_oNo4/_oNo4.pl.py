from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


_Ono4_Pl_V0_1_0 = CommandToolBuilder(tool="_oNo4.pl", base_command=["_oNo4.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    _Ono4_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

