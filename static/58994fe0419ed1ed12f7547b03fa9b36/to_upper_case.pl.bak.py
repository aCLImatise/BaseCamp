from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


To_Upper_Case_Pl_Bak_V0_1_0 = CommandToolBuilder(tool="to_upper_case.pl.bak", base_command=["to_upper_case.pl.bak"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    To_Upper_Case_Pl_Bak_V0_1_0().translate("wdl", allow_empty_container=True)

