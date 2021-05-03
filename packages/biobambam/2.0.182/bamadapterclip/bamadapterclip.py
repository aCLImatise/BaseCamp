from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamadapterclip_V0_1_0 = CommandToolBuilder(tool="bamadapterclip", base_command=["bamadapterclip"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamadapterclip_V0_1_0().translate("wdl")

