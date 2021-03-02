from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Rkp_Py_V0_1_0 = CommandToolBuilder(tool="RKP.py", base_command=["RKP.py"], inputs=[ToolInput(tag="in_at", input_type=Boolean(optional=True), prefix="-at", doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=Int(optional=True), prefix="-k", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-D", doc=InputDocumentation(doc="")), ToolInput(tag="in_h", input_type=String(optional=True), prefix="-H", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-A", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rkp_Py_V0_1_0().translate("wdl", allow_empty_container=True)

