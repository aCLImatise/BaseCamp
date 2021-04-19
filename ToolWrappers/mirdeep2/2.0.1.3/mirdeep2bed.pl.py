from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mirdeep2Bed_Pl_V0_1_0 = CommandToolBuilder(tool="mirdeep2bed.pl", base_command=["mirdeep2bed.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mirdeep2Bed_Pl_V0_1_0().translate("wdl")

