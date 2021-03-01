from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Glim_Diff_Awk_V0_1_0 = CommandToolBuilder(tool="glim_diff.awk", base_command=["glim-diff.awk"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glim_Diff_Awk_V0_1_0().translate("wdl", allow_empty_container=True)

