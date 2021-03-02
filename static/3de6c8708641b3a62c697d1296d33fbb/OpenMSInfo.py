from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Openmsinfo_V0_1_0 = CommandToolBuilder(tool="OpenMSInfo", base_command=["OpenMSInfo"], inputs=[], outputs=[], container="quay.io/biocontainers/openms:2.6.0--h4afb90d_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Openmsinfo_V0_1_0().translate("wdl")

