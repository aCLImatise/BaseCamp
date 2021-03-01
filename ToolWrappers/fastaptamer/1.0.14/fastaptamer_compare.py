from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Fastaptamer_Compare_V0_1_0 = CommandToolBuilder(tool="fastaptamer_compare", base_command=["fastaptamer_compare"], inputs=[ToolInput(tag="in_a", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_y", input_type=File(optional=True), prefix="-y", doc=InputDocumentation(doc="")), ToolInput(tag="in_x", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaptamer_Compare_V0_1_0().translate("wdl", allow_empty_container=True)

