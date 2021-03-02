from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Nab_V0_1_0 = CommandToolBuilder(tool="nab", base_command=["nab"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nab_V0_1_0().translate("wdl", allow_empty_container=True)

