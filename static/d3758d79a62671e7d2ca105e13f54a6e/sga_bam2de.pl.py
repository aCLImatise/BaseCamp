from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sga_Bam2De_Pl_V0_1_0 = CommandToolBuilder(tool="sga_bam2de.pl", base_command=["sga-bam2de.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sga_Bam2De_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

