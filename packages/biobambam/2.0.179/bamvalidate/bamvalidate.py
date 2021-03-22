from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bamvalidate_V0_1_0 = CommandToolBuilder(tool="bamvalidate", base_command=["bamvalidate"], inputs=[], outputs=[], container="quay.io/biocontainers/biobambam:2.0.179--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamvalidate_V0_1_0().translate("wdl")

