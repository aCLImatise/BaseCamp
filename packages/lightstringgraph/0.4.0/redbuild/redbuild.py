from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Redbuild_V0_1_0 = CommandToolBuilder(tool="redbuild", base_command=["redbuild"], inputs=[ToolInput(tag="in_b", input_type=String(optional=True), prefix="-b", doc=InputDocumentation(doc="# (required)")), ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="# (required)")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Redbuild_V0_1_0().translate("wdl", allow_empty_container=True)

