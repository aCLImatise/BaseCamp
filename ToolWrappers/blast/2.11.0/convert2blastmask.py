from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Convert2Blastmask_V0_1_0 = CommandToolBuilder(tool="convert2blastmask", base_command=["convert2blastmask"], inputs=[], outputs=[], container="quay.io/biocontainers/blast:2.11.0--pl526he19e7b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert2Blastmask_V0_1_0().translate("wdl")

