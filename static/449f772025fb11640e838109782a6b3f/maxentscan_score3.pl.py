from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Maxentscan_Score3_Pl_V0_1_0 = CommandToolBuilder(tool="maxentscan_score3.pl", base_command=["maxentscan_score3.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maxentscan_Score3_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

