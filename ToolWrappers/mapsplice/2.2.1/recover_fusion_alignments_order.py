from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *


Recover_Fusion_Alignments_Order_V0_1_0 = CommandToolBuilder(tool="recover_fusion_alignments_order", base_command=["recover_fusion_alignments_order"], inputs=[], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Recover_Fusion_Alignments_Order_V0_1_0().translate("wdl", allow_empty_container=True)

