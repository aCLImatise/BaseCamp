from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Novoplasty4_2_Pl_V0_1_0 = CommandToolBuilder(tool="NOVOPlasty4.2.pl", base_command=["NOVOPlasty4.2.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/novoplasty:4.2--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Novoplasty4_2_Pl_V0_1_0().translate("wdl")

