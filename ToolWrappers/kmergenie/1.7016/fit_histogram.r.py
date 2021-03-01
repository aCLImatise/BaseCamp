from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Fit_Histogram_R_V0_1_0 = CommandToolBuilder(tool="fit_histogram.r", base_command=["fit-histogram.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fit_Histogram_R_V0_1_0().translate("wdl", allow_empty_container=True)

