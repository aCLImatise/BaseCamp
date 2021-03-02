from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Enrichm_V0_1_0 = CommandToolBuilder(tool="enrichm", base_command=["enrichm"], inputs=[], outputs=[], container="quay.io/biocontainers/enrichm:0.6.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Enrichm_V0_1_0().translate("wdl")

