from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Erate_Estimate_V0_1_0 = CommandToolBuilder(tool="erate_estimate", base_command=["erate-estimate"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Erate_Estimate_V0_1_0().translate("wdl", allow_empty_container=True)

