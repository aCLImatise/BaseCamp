from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nanocompore_V0_1_0 = CommandToolBuilder(tool="nanocompore", base_command=["nanocompore"], inputs=[], outputs=[], container="quay.io/biocontainers/nanocompore:1.0.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nanocompore_V0_1_0().translate("wdl")

