from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Htsbox_Bcfidx_V0_1_0 = CommandToolBuilder(tool="htsbox_bcfidx", base_command=["htsbox", "bcfidx"], inputs=[ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_idx", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Bcfidx_V0_1_0().translate("wdl", allow_empty_container=True)

