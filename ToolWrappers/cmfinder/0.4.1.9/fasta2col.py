from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fasta2Col_V0_1_0 = CommandToolBuilder(tool="fasta2col", base_command=["fasta2col"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta2Col_V0_1_0().translate("wdl", allow_empty_container=True)

