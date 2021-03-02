from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Utrgff2Gbrowse_Pl_V0_1_0 = CommandToolBuilder(tool="utrgff2gbrowse.pl", base_command=["utrgff2gbrowse.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Utrgff2Gbrowse_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

