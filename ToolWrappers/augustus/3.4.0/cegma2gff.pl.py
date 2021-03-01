from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cegma2Gff_Pl_V0_1_0 = CommandToolBuilder(tool="cegma2gff.pl", base_command=["cegma2gff.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cegma2Gff_Pl_V0_1_0().translate("wdl")

