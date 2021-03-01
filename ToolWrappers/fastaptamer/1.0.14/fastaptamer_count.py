from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Fastaptamer_Count_V0_1_0 = CommandToolBuilder(tool="fastaptamer_count", base_command=["fastaptamer_count"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaptamer_Count_V0_1_0().translate("wdl", allow_empty_container=True)

