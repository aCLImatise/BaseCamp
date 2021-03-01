from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Interleave_V0_1_0 = CommandToolBuilder(tool="fastq_interleave", base_command=["fastq-interleave"], inputs=[], outputs=[], container="quay.io/biocontainers/last:1186--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Interleave_V0_1_0().translate("wdl")

