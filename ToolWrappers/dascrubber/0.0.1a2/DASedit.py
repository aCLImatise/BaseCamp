from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Dasedit_V0_1_0 = CommandToolBuilder(tool="DASedit", base_command=["DASedit"], inputs=[ToolInput(tag="in_x", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_int", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dasedit_V0_1_0().translate("wdl", allow_empty_container=True)

