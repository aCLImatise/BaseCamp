from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Est_Mean_R_V0_1_0 = CommandToolBuilder(tool="est_mean.r", base_command=["est-mean.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Est_Mean_R_V0_1_0().translate("wdl", allow_empty_container=True)

