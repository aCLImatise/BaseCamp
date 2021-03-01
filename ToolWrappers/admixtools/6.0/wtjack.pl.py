from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Wtjack_Pl_V0_1_0 = CommandToolBuilder(tool="wtjack.pl", base_command=["wtjack.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wtjack_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

