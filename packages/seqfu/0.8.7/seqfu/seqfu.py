from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Seqfu_V0_1_0 = CommandToolBuilder(tool="seqfu", base_command=["seqfu"], inputs=[], outputs=[], container="quay.io/biocontainers/seqfu:0.8.7--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqfu_V0_1_0().translate("wdl")

