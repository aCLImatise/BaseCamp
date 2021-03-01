from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Divide_It_Pl_V0_1_0 = CommandToolBuilder(tool="divide_it.pl", base_command=["divide_it.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Divide_It_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

