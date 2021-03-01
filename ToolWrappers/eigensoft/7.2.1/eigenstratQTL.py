from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Eigenstratqtl_V0_1_0 = CommandToolBuilder(tool="eigenstratQTL", base_command=["eigenstratQTL"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_j", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_must", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_all", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_be", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_specified", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eigenstratqtl_V0_1_0().translate("wdl", allow_empty_container=True)

