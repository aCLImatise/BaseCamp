from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Bgt_Bcfidx_V0_1_0 = CommandToolBuilder(tool="bgt_bcfidx", base_command=["bgt", "bcfidx"], inputs=[ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bcf", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bgt_Bcfidx_V0_1_0().translate("wdl", allow_empty_container=True)

