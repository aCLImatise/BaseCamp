from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gifrop_R_Reqs_R_V0_1_0 = CommandToolBuilder(tool="gifrop_R_reqs.R", base_command=["gifrop_R_reqs.R"], inputs=[], outputs=[], container="quay.io/biocontainers/gifrop:0.0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gifrop_R_Reqs_R_V0_1_0().translate("wdl")

