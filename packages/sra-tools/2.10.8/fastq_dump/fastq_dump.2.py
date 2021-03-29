from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Dump_2_V0_1_0 = CommandToolBuilder(tool="fastq_dump.2", base_command=["fastq-dump.2"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Dump_2_V0_1_0().translate("wdl", allow_empty_container=True)

