from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Calitas_V0_1_0 = CommandToolBuilder(tool="calitas", base_command=["calitas"], inputs=[], outputs=[], container="quay.io/biocontainers/calitas:1.0--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calitas_V0_1_0().translate("wdl")

