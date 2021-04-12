from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gatech_Pmp2Hints_Pl_V0_1_0 = CommandToolBuilder(tool="gatech_pmp2hints.pl", base_command=["gatech_pmp2hints.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gatech_Pmp2Hints_Pl_V0_1_0().translate("wdl")

