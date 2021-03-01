from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pbam2Bam_V0_1_0 = CommandToolBuilder(tool="pbam2bam", base_command=["pbam2bam"], inputs=[], outputs=[], container="quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbam2Bam_V0_1_0().translate("wdl")

