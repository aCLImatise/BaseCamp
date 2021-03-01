from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Htsbox_Samsort_V0_1_0 = CommandToolBuilder(tool="htsbox_samsort", base_command=["htsbox", "samsort"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_sort", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Samsort_V0_1_0().translate("wdl", allow_empty_container=True)

