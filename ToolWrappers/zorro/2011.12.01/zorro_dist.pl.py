from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Zorro_Dist_Pl_V0_1_0 = CommandToolBuilder(tool="zorro_dist.pl", base_command=["zorro_dist.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Zorro_Dist_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

