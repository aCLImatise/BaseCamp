from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Benchmark_Plot_R_V0_1_0 = CommandToolBuilder(tool="benchmark_plot.R", base_command=["benchmark-plot.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Benchmark_Plot_R_V0_1_0().translate("wdl", allow_empty_container=True)

