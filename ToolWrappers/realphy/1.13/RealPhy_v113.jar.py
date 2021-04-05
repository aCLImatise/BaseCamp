from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Realphy_V113_Jar_V0_1_0 = CommandToolBuilder(tool="RealPhy_v113.jar", base_command=["RealPhy_v113.jar"], inputs=[], outputs=[], container="quay.io/biocontainers/realphy:1.13--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Realphy_V113_Jar_V0_1_0().translate("wdl")

