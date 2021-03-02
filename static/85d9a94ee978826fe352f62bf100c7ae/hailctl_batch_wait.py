from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hailctl_Batch_Wait_V0_1_0 = CommandToolBuilder(tool="hailctl_batch_wait", base_command=["hailctl", "batch", "wait"], inputs=[ToolInput(tag="in_batch_id", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container="quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Batch_Wait_V0_1_0().translate("wdl")

