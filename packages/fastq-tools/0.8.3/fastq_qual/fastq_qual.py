from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Qual_V0_1_0 = CommandToolBuilder(tool="fastq_qual", base_command=["fastq-qual"], inputs=[], outputs=[], container="quay.io/biocontainers/fastq-tools:0.8.3--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Qual_V0_1_0().translate("wdl")

