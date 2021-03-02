from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Clsify_V0_1_0 = CommandToolBuilder(tool="clsify", base_command=["clsify"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clsify_V0_1_0().translate("wdl", allow_empty_container=True)

