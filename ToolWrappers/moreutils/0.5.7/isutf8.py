from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Isutf8_V0_1_0 = CommandToolBuilder(tool="isutf8", base_command=["isutf8"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="")), ToolInput(tag="in_hq", input_type=Boolean(optional=True), prefix="-hq", doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Isutf8_V0_1_0().translate("wdl", allow_empty_container=True)

