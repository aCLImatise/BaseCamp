from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obrotate_V0_1_0 = CommandToolBuilder(tool="obrotate", base_command=["obrotate"], inputs=[], outputs=[], container="quay.io/biocontainers/openbabel:3.1.1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obrotate_V0_1_0().translate("wdl")

