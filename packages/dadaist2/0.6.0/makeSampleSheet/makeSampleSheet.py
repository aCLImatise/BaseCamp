from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Makesamplesheet_V0_1_0 = CommandToolBuilder(tool="makeSampleSheet", base_command=["makeSampleSheet"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.6.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makesamplesheet_V0_1_0().translate("wdl")

