from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Test_Mgcv_Installed_R_V0_1_0 = CommandToolBuilder(tool="test.mgcv.installed.R", base_command=["test.mgcv.installed.R"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Test_Mgcv_Installed_R_V0_1_0().translate("wdl", allow_empty_container=True)

