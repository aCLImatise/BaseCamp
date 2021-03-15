from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Canion_V0_1_0 = CommandToolBuilder(tool="Canion", base_command=["Canion"], inputs=[], outputs=[], container="quay.io/biocontainers/curves:3.0.0--hc99cbb1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Canion_V0_1_0().translate("wdl")

