from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gc_Res_Pl_V0_1_0 = CommandToolBuilder(tool="gc_res.pl", base_command=["gc_res.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gc_Res_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

