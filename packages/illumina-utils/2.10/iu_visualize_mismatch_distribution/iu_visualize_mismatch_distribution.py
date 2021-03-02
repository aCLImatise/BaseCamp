from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Iu_Visualize_Mismatch_Distribution_V0_1_0 = CommandToolBuilder(tool="iu_visualize_mismatch_distribution", base_command=["iu-visualize-mismatch-distribution"], inputs=[], outputs=[], container="quay.io/biocontainers/illumina-utils:2.10--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Iu_Visualize_Mismatch_Distribution_V0_1_0().translate("wdl")

