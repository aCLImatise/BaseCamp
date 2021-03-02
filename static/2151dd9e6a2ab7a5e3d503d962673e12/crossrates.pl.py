from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Crossrates_Pl_V0_1_0 = CommandToolBuilder(tool="crossrates.pl", base_command=["crossrates.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crossrates_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

