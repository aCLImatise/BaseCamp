from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Core_Only_Pl_V0_1_0 = CommandToolBuilder(tool="core_only.pl", base_command=["core-only.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Core_Only_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

