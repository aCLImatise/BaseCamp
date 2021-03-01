from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bam_Umi_Count_V0_1_0 = CommandToolBuilder(tool="bam_umi_count", base_command=["bam_umi_count"], inputs=[], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Umi_Count_V0_1_0().translate("wdl")

