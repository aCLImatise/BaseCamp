from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cansnper2_Test_V0_1_0 = CommandToolBuilder(tool="CanSNPer2_test", base_command=["CanSNPer2-test"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cansnper2_Test_V0_1_0().translate("wdl", allow_empty_container=True)

