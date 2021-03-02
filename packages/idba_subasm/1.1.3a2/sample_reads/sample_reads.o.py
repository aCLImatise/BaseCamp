from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Sample_Reads_O_V0_1_0 = CommandToolBuilder(tool="sample_reads.o", base_command=["sample_reads.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sample_Reads_O_V0_1_0().translate("wdl", allow_empty_container=True)

