from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Centrifuge_Removeemptysequence_Pl_V0_1_0 = CommandToolBuilder(tool="centrifuge_RemoveEmptySequence.pl", base_command=["centrifuge-RemoveEmptySequence.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/centrifuge-core:1.0.4_beta--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centrifuge_Removeemptysequence_Pl_V0_1_0().translate("wdl")

