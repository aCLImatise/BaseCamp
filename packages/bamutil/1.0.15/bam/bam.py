from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bam_V0_1_0 = CommandToolBuilder(tool="bam", base_command=["bam"], inputs=[ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tool_arguments", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bamutil:1.0.15--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_V0_1_0().translate("wdl")

