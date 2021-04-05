from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bammdnm_V0_1_0 = CommandToolBuilder(tool="bammdnm", base_command=["bammdnm"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bammdnm_V0_1_0().translate("wdl")

