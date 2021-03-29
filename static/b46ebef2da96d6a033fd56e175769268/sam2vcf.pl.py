from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sam2Vcf_Pl_V0_1_0 = CommandToolBuilder(tool="sam2vcf.pl", base_command=["sam2vcf.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/samtools:1.12--hd5e65b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sam2Vcf_Pl_V0_1_0().translate("wdl")

