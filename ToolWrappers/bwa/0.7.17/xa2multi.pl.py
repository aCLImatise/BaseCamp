from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Xa2Multi_Pl_V0_1_0 = CommandToolBuilder(tool="xa2multi.pl", base_command=["xa2multi.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xa2Multi_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

