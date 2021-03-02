from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Testatac_V0_1_0 = CommandToolBuilder(tool="testAtac", base_command=["testAtac"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Testatac_V0_1_0().translate("wdl", allow_empty_container=True)

