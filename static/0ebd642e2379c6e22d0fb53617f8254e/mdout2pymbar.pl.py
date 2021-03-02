from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Mdout2Pymbar_Pl_V0_1_0 = CommandToolBuilder(tool="mdout2pymbar.pl", base_command=["mdout2pymbar.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mdout2Pymbar_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

