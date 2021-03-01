from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Scatter2D_Pl_V0_1_0 = CommandToolBuilder(tool="test_Scatter2D.pl", base_command=["test_Scatter2D.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Scatter2D_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

