from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Ono7_Pl_V0_1_0 = CommandToolBuilder(tool="oNo7.pl", base_command=["oNo7.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ono7_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

