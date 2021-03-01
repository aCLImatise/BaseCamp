from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Lexmapr_Output_V0_1_0 = CommandToolBuilder(tool="lexmapr_OUTPUT", base_command=["lexmapr", "OUTPUT"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_cache", input_type=Boolean(optional=True), prefix="--no-cache", doc=InputDocumentation(doc="")), ToolInput(tag="in_b", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_f", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lexmapr_Output_V0_1_0().translate("wdl", allow_empty_container=True)

