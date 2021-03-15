from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rename_Filter_Fastq_Pl_V0_1_0 = CommandToolBuilder(tool="rename_filter_fastq.pl", base_command=["rename_filter_fastq.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rename_Filter_Fastq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

