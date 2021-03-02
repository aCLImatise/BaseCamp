from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Cutoff_R_Bak_V0_1_0 = CommandToolBuilder(tool="cutoff.r.bak", base_command=["cutoff.r.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cutoff_R_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

