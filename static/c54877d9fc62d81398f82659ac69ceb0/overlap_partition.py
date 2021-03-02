from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Overlap_Partition_V0_1_0 = CommandToolBuilder(tool="overlap_partition", base_command=["overlap_partition"], inputs=[ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlap_Partition_V0_1_0().translate("wdl", allow_empty_container=True)

