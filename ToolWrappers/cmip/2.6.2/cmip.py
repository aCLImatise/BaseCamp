from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cmip_V0_1_0 = CommandToolBuilder(tool="cmip", base_command=["cmip"], inputs=[], outputs=[], container="quay.io/biocontainers/cmip:2.6.2--hc99cbb1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmip_V0_1_0().translate("wdl")

