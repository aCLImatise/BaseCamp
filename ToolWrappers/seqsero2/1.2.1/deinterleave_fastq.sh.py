from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deinterleave_Fastq_Sh_V0_1_0 = CommandToolBuilder(tool="deinterleave_fastq.sh", base_command=["deinterleave_fastq.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/seqsero2:1.2.1--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deinterleave_Fastq_Sh_V0_1_0().translate("wdl")

