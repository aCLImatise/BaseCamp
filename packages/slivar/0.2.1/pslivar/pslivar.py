from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Pslivar_V0_1_0 = CommandToolBuilder(tool="pslivar", base_command=["pslivar"], inputs=[], outputs=[], container="quay.io/biocontainers/slivar:0.2.1--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslivar_V0_1_0().translate("wdl")

