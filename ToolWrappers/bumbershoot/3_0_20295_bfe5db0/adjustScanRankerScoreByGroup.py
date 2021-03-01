from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Adjustscanrankerscorebygroup_V0_1_0 = CommandToolBuilder(tool="adjustScanRankerScoreByGroup", base_command=["adjustScanRankerScoreByGroup"], inputs=[ToolInput(tag="in_group_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bumbershoot:3_0_20295_bfe5db0--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Adjustscanrankerscorebygroup_V0_1_0().translate("wdl")

