from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Igor_Compute_Pgen_V0_1_0 = CommandToolBuilder(tool="igor_compute_pgen", base_command=["igor-compute_pgen"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igor_Compute_Pgen_V0_1_0().translate("wdl", allow_empty_container=True)

