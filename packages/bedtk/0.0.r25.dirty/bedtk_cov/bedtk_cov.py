from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtk_Cov_V0_1_0 = CommandToolBuilder(tool="bedtk_cov", base_command=["bedtk", "cov"], inputs=[ToolInput(tag="in_only_count_breadth", input_type=Boolean(optional=True), prefix="-c", doc=InputDocumentation(doc="only count; no breadth of depth")), ToolInput(tag="in_containment_only", input_type=Boolean(optional=True), prefix="-C", doc=InputDocumentation(doc="containment only")), ToolInput(tag="in_loaded_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_streamed_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtk_Cov_V0_1_0().translate("wdl")

