from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bam12Auxmerge_V0_1_0 = CommandToolBuilder(tool="bam12auxmerge", base_command=["bam12auxmerge"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam12Auxmerge_V0_1_0().translate("wdl")

