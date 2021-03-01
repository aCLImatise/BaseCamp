from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Duplicatecol_Pl_V0_1_0 = CommandToolBuilder(tool="duplicateCol.pl", base_command=["duplicateCol.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Duplicatecol_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

