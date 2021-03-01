from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Deepnog_V0_1_0 = CommandToolBuilder(tool="deepnog", base_command=["deepnog"], inputs=[], outputs=[], container="quay.io/biocontainers/deepnog:1.2.3--pyh5bfb8f1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deepnog_V0_1_0().translate("wdl")

