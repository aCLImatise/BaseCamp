from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gc_Coverage_Bias_Plot_V0_1_0 = CommandToolBuilder(tool="gc_coverage_bias_plot", base_command=["gc_coverage_bias_plot"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gc_Coverage_Bias_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

