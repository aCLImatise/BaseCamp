from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Maskoutfa_V0_1_0 = CommandToolBuilder(tool="maskOutFa", base_command=["maskOutFa"], inputs=[ToolInput(tag="in_soft", input_type=Boolean(optional=True), prefix="-soft", doc=InputDocumentation(doc="- puts masked parts in lower case other in upper.")), ToolInput(tag="in_soft_add", input_type=Boolean(optional=True), prefix="-softAdd", doc=InputDocumentation(doc="- lower cases masked bits, leaves others unchanged")), ToolInput(tag="in_clip", input_type=Boolean(optional=True), prefix="-clip", doc=InputDocumentation(doc="- clip out of bounds mask records rather than dying.")), ToolInput(tag="in_mask_format", input_type=String(optional=True), prefix="-maskFormat", doc=InputDocumentation(doc="- 'out' or 'bed' for when input does not have required extension.")), ToolInput(tag="in_in_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mask_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Maskoutfa_V0_1_0().translate("wdl", allow_empty_container=True)

