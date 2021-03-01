from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Realphy_V112_Jar_V0_1_0 = CommandToolBuilder(tool="RealPhy_v112.jar", base_command=["RealPhy_v112.jar"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Realphy_V112_Jar_V0_1_0().translate("wdl", allow_empty_container=True)

