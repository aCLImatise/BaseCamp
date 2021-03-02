from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Rnazwindow_Gq_Pl_V0_1_0 = CommandToolBuilder(tool="rnazWindow_gq.pl", base_command=["rnazWindow_gq.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rnazwindow_Gq_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

