from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Gapplacer_Pl_V0_1_0 = CommandToolBuilder(tool="gapPlacer.pl", base_command=["gapPlacer.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gapplacer_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

