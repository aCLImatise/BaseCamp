from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Assess_Significance_R_V0_1_0 = CommandToolBuilder(tool="assess_significance.R", base_command=["assess_significance.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Assess_Significance_R_V0_1_0().translate("wdl", allow_empty_container=True)

