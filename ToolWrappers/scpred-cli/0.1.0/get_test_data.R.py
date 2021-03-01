from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Get_Test_Data_R_V0_1_0 = CommandToolBuilder(tool="get_test_data.R", base_command=["get_test_data.R"], inputs=[], outputs=[], container="quay.io/biocontainers/scpred-cli:0.1.0--1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Test_Data_R_V0_1_0().translate("wdl")

