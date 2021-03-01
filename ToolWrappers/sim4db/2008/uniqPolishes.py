from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Uniqpolishes_V0_1_0 = CommandToolBuilder(tool="uniqPolishes", base_command=["uniqPolishes"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uniqpolishes_V0_1_0().translate("wdl", allow_empty_container=True)

