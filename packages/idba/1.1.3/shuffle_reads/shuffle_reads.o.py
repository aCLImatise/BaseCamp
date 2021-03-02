from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Shuffle_Reads_O_V0_1_0 = CommandToolBuilder(tool="shuffle_reads.o", base_command=["shuffle_reads.o"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shuffle_Reads_O_V0_1_0().translate("wdl", allow_empty_container=True)

