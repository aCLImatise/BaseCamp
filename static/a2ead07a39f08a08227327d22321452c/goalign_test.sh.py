from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Goalign_Test_Sh_V0_1_0 = CommandToolBuilder(tool="goalign_test.sh", base_command=["goalign_test.sh"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Goalign_Test_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

