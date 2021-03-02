from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rmfadups_V0_1_0 = CommandToolBuilder(tool="rmFaDups", base_command=["rmFaDups"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rmfadups_V0_1_0().translate("wdl", allow_empty_container=True)

