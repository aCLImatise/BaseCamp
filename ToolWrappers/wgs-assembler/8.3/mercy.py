from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mercy_V0_1_0 = CommandToolBuilder(tool="mercy", base_command=["mercy"], inputs=[ToolInput(tag="in_af", input_type=Boolean(optional=True), prefix="-af", doc=InputDocumentation(doc="fragcounts")), ToolInput(tag="in_ac", input_type=Boolean(optional=True), prefix="-ac", doc=InputDocumentation(doc="contigcounts")), ToolInput(tag="in_dump", input_type=String(optional=True), prefix="-dump", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mercy_V0_1_0().translate("wdl", allow_empty_container=True)

