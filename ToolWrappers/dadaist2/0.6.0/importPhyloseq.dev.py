from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Importphyloseq_Dev_V0_1_0 = CommandToolBuilder(tool="importPhyloseq.dev", base_command=["importPhyloseq.dev"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.6.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Importphyloseq_Dev_V0_1_0().translate("wdl")

