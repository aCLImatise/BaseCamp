from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Run_Dada_Paired_R_V0_1_0 = CommandToolBuilder(tool="run_dada_paired.R", base_command=["run_dada_paired.R"], inputs=[], outputs=[], container="quay.io/biocontainers/dadaist2:0.6.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Dada_Paired_R_V0_1_0().translate("wdl")

