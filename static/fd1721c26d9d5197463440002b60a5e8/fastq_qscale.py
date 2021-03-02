from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Qscale_V0_1_0 = CommandToolBuilder(tool="fastq_qscale", base_command=["fastq-qscale"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Qscale_V0_1_0().translate("wdl", allow_empty_container=True)

