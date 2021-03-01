from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cov_Model_R_V0_1_0 = CommandToolBuilder(tool="cov_model.r", base_command=["cov_model.r"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cov_Model_R_V0_1_0().translate("wdl", allow_empty_container=True)

