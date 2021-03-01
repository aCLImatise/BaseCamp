from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Gvcf2Coverage_V0_1_0 = CommandToolBuilder(tool="gvcf2coverage", base_command=["gvcf2coverage"], inputs=[ToolInput(tag="in_n", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gvcf2Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

