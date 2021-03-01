from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Anvi_Compute_Ani_V0_1_0 = CommandToolBuilder(tool="anvi_compute_ani", base_command=["anvi-compute-ani"], inputs=[], outputs=[], container="quay.io/biocontainers/anvio-minimal:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Compute_Ani_V0_1_0().translate("wdl")

