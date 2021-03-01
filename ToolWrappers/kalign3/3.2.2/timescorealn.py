from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Timescorealn_V0_1_0 = CommandToolBuilder(tool="timescorealn", base_command=["timescorealn"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_program", input_type=String(optional=True), prefix="-program", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref", input_type=String(optional=True), prefix="-ref", doc=InputDocumentation(doc="")), ToolInput(tag="in_test", input_type=String(optional=True), prefix="-test", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Timescorealn_V0_1_0().translate("wdl", allow_empty_container=True)

