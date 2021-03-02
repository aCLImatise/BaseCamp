from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Validator_Sh_V0_1_0 = CommandToolBuilder(tool="fastq_validator.sh", base_command=["fastq_validator.sh"], inputs=[], outputs=[], container="quay.io/biocontainers/fastq_utils:0.24.1--hfb9b9cc_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Validator_Sh_V0_1_0().translate("wdl")

