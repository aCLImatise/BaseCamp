from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Igblastp_V0_1_0 = CommandToolBuilder(tool="igblastp", base_command=["igblastp"], inputs=[], outputs=[], container="quay.io/biocontainers/igblast:1.17.1--h388d1fa_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igblastp_V0_1_0().translate("wdl")

