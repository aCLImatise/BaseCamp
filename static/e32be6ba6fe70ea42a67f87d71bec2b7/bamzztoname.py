from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamzztoname_V0_1_0 = CommandToolBuilder(tool="bamzztoname", base_command=["bamzztoname"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.180--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamzztoname_V0_1_0().translate("wdl")

