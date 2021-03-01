from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fastq_Qualadj_V0_1_0 = CommandToolBuilder(tool="fastq_qualadj", base_command=["fastq-qualadj"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastq_Qualadj_V0_1_0().translate("wdl", allow_empty_container=True)

