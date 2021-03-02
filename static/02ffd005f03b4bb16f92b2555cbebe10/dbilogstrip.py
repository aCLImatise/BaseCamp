from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Dbilogstrip_V0_1_0 = CommandToolBuilder(tool="dbilogstrip", base_command=["dbilogstrip"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dbilogstrip_V0_1_0().translate("wdl", allow_empty_container=True)

