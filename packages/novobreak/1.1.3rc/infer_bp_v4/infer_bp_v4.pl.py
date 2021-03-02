from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Infer_Bp_V4_Pl_V0_1_0 = CommandToolBuilder(tool="infer_bp_v4.pl", base_command=["infer_bp_v4.pl"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Infer_Bp_V4_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

