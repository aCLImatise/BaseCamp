from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Analyze_Blastplus_Tophit_Coverage_Pl_V0_1_0 = CommandToolBuilder(tool="analyze_blastPlus_topHit_coverage.pl", base_command=["analyze_blastPlus_topHit_coverage.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Analyze_Blastplus_Tophit_Coverage_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

