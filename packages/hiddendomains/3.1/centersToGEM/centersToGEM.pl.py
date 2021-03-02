from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Centerstogem_Pl_V0_1_0 = CommandToolBuilder(tool="centersToGEM.pl", base_command=["centersToGEM.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Centerstogem_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

