from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gxw2Stats_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="gxw2stats.pl.bak", base_command=["gxw2stats.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gxw2Stats_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

