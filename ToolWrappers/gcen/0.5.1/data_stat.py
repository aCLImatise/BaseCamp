from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Data_Stat_V0_1_0 = CommandToolBuilder(tool="data_stat", base_command=["data_stat"], inputs=[], outputs=[], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Data_Stat_V0_1_0().translate("wdl")

