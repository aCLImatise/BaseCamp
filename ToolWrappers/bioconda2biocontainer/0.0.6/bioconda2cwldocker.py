from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Bioconda2Cwldocker_V0_1_0 = CommandToolBuilder(tool="bioconda2cwldocker", base_command=["bioconda2cwldocker"], inputs=[], outputs=[], container="quay.io/biocontainers/bioconda2biocontainer:0.0.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioconda2Cwldocker_V0_1_0().translate("wdl")

