from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Installmetaphyler_Pl_V0_1_0 = CommandToolBuilder(tool="installMetaphyler.pl", base_command=["installMetaphyler.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Installmetaphyler_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

