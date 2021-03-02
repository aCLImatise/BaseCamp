from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gxw2Consensus_Pl_V0_1_0 = CommandToolBuilder(tool="gxw2consensus.pl", base_command=["gxw2consensus.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gxw2Consensus_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

