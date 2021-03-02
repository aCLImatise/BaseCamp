from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Soap2Sam_Pl_V0_1_0 = CommandToolBuilder(tool="soap2sam.pl", base_command=["soap2sam.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/samtools:1.11--h6270b1f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Soap2Sam_Pl_V0_1_0().translate("wdl")

