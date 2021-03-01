from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Fragscaff_Sh_V0_1_0 = CommandToolBuilder(tool="fragScaff.sh", base_command=["fragScaff.sh"], inputs=[ToolInput(tag="in_b", input_type=File(optional=True), prefix="-b", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(optional=True), prefix="-a", doc=InputDocumentation(doc="")), ToolInput(tag="in_p", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fragscaff_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

