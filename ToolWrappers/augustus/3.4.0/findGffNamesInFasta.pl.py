from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Findgffnamesinfasta_Pl_V0_1_0 = CommandToolBuilder(tool="findGffNamesInFasta.pl", base_command=["findGffNamesInFasta.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Findgffnamesinfasta_Pl_V0_1_0().translate("wdl")

