from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Obfitall_V0_1_0 = CommandToolBuilder(tool="obfitall", base_command=["obfitall"], inputs=[], outputs=[], container="quay.io/biocontainers/openbabel:3.1.1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Obfitall_V0_1_0().translate("wdl")

