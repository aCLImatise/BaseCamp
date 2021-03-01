from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Classify_Reads_Pl_V0_1_0 = CommandToolBuilder(tool="classify_reads.pl", base_command=["classify_reads.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Classify_Reads_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

