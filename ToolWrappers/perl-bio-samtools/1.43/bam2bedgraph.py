from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam2Bedgraph_V0_1_0 = CommandToolBuilder(tool="bam2bedgraph", base_command=["bam2bedgraph"], inputs=[ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_region", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam2Bedgraph_V0_1_0().translate("wdl", allow_empty_container=True)

