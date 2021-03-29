from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Stacks_Hist2D_Loci_Samples_Coverage_V0_1_0 = CommandToolBuilder(tool="stacks_hist2d_loci_samples_coverage", base_command=["stacks-hist2d-loci-samples-coverage"], inputs=[], outputs=[], container="quay.io/biocontainers/stacks:2.55--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Stacks_Hist2D_Loci_Samples_Coverage_V0_1_0().translate("wdl")

