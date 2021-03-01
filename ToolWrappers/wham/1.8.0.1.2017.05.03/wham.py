from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Wham_V0_1_0 = CommandToolBuilder(tool="wham", base_command=["wham"], inputs=[ToolInput(tag="in_if", input_type=String(optional=True), prefix="-If", doc=InputDocumentation(doc="find a bug, please open a report on github!")), ToolInput(tag="in_the", input_type=String(optional=True), prefix="-The", doc=InputDocumentation(doc=", and -p, control the sensitivity and specificity"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wham_V0_1_0().translate("wdl", allow_empty_container=True)

