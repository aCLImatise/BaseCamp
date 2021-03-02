from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bam2Fastq_V0_1_0 = CommandToolBuilder(tool="bam2fastq", base_command=["bam2fastq"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Fastq_V0_1_0().translate("wdl", allow_empty_container=True)

