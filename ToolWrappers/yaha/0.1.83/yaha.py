from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Yaha_V0_1_0 = CommandToolBuilder(tool="yaha", base_command=["yaha"], inputs=[ToolInput(tag="in_o_eight", input_type=Boolean(optional=True), prefix="-o8", doc=InputDocumentation(doc="produces alignment output in modified Blast8 format.")), ToolInput(tag="in_osh", input_type=Boolean(optional=True), prefix="-osh", doc=InputDocumentation(doc="produces alignment output in SAM format with hard clipping.")), ToolInput(tag="in_oss", input_type=Boolean(optional=True), prefix="-oss", doc=InputDocumentation(doc="produces alignment output in SAM format with soft clipping."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yaha_V0_1_0().translate("wdl", allow_empty_container=True)

