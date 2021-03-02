from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bam2Fastq_V0_1_0 = CommandToolBuilder(tool="bam2fastq", base_command=["bam2fastq"], inputs=[], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fastq_V0_1_0().translate("wdl")

