from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Circos_Pl_V0_1_0 = CommandToolBuilder(tool="Circos.pl", base_command=["Circos.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/novoplasty:4.2--pl526_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Circos_Pl_V0_1_0().translate("wdl")

