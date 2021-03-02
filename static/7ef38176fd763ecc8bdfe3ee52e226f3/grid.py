from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Grid_V0_1_0 = CommandToolBuilder(tool="grid", base_command=["grid"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_display", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_high", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_using", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_this", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_help", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_single", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Grid_V0_1_0().translate("wdl", allow_empty_container=True)

