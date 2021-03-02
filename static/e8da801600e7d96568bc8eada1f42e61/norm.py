from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Norm_V0_1_0 = CommandToolBuilder(tool="norm", base_command=["norm"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Norm_V0_1_0().translate("wdl", allow_empty_container=True)

