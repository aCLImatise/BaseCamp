from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gnali_Setup_V0_1_0 = CommandToolBuilder(tool="gnali_setup", base_command=["gnali_setup"], inputs=[], outputs=[], container="quay.io/biocontainers/gnali:1.0.3--py37heccd8a3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gnali_Setup_V0_1_0().translate("wdl")

