from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Randomizemotifs_Pl_0_1_V0_1_0 = CommandToolBuilder(tool="randomizeMotifs.pl_0|1", base_command=["randomizeMotifs.pl", "0|1"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randomizemotifs_Pl_0_1_V0_1_0().translate("wdl", allow_empty_container=True)

