from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Locarna_Motif_Scan_V0_1_0 = CommandToolBuilder(tool="locarna_motif_scan", base_command=["locarna-motif-scan"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarna_Motif_Scan_V0_1_0().translate("wdl", allow_empty_container=True)

