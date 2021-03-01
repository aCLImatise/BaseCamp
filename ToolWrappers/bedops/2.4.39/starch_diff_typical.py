from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Starch_Diff_Typical_V0_1_0 = CommandToolBuilder(tool="starch_diff_typical", base_command=["starch-diff-typical"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Starch_Diff_Typical_V0_1_0().translate("wdl", allow_empty_container=True)

