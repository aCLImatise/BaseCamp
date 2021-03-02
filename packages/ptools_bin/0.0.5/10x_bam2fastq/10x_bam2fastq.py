from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


10X_Bam2Fastq_V0_1_0 = CommandToolBuilder(tool="10x_bam2fastq", base_command=["10x_bam2fastq"], inputs=[], outputs=[], container="quay.io/biocontainers/ptools_bin:0.0.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    10X_Bam2Fastq_V0_1_0().translate("wdl")

