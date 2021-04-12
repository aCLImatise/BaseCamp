from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Compare_Intervals_Exact_Pl_V0_1_0 = CommandToolBuilder(tool="compare_intervals_exact.pl", base_command=["compare_intervals_exact.pl"], inputs=[], outputs=[], container="quay.io/biocontainers/braker2:2.1.6--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Intervals_Exact_Pl_V0_1_0().translate("wdl")

