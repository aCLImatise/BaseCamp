from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Splitgl_V0_1_0 = CommandToolBuilder(tool="splitgl", base_command=["splitgl"], inputs=[], outputs=[], container="quay.io/biocontainers/angsd:0.935--hd2e4403_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitgl_V0_1_0().translate("wdl")

