from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fit_Histogram_R_Bak_V0_1_0 = CommandToolBuilder(tool="fit_histogram.r.bak", base_command=["fit-histogram.r.bak"], inputs=[], outputs=[], container="quay.io/biocontainers/kmergenie:1.7051--py38r40h197edbe_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fit_Histogram_R_Bak_V0_1_0().translate("wdl")

