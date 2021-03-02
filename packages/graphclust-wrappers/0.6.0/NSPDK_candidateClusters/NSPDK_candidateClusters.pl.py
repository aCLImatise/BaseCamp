from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nspdk_Candidateclusters_Pl_V0_1_0 = CommandToolBuilder(tool="NSPDK_candidateClusters.pl", base_command=["NSPDK_candidateClusters.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nspdk_Candidateclusters_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

