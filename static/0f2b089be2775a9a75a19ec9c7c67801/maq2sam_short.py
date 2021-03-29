from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Maq2Sam_Short_V0_1_0 = CommandToolBuilder(tool="maq2sam_short", base_command=["maq2sam-short"], inputs=[ToolInput(tag="in_maq_two_sam", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_map", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_group", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/samtools:1.12--hd5e65b6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maq2Sam_Short_V0_1_0().translate("wdl")

