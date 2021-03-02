from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Make_Mate_Frg_Pl_V0_1_0 = CommandToolBuilder(tool="make_mate_frg.pl", base_command=["make_mate_frg.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Make_Mate_Frg_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

