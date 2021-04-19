from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Sdust_V0_1_0 = CommandToolBuilder(tool="sdust", base_command=["sdust"], inputs=[ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/minimap2:2.18--h5bf99c6_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sdust_V0_1_0().translate("wdl")

