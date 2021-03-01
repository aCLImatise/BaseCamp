from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Sidebyside_V0_1_0 = CommandToolBuilder(tool="sidebyside", base_command=["sidebyside"], inputs=[ToolInput(tag="in_width", input_type=File(optional=True), prefix="-width", doc=InputDocumentation(doc=": line width for each file (default: 50)")), ToolInput(tag="in_same", input_type=String(optional=True), prefix="-same", doc=InputDocumentation(doc=": marker for lines that are the same (default: ==)")), ToolInput(tag="in_dif", input_type=String(optional=True), prefix="-dif", doc=InputDocumentation(doc=": marker for lines that are different (default: !!)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sidebyside_V0_1_0().translate("wdl", allow_empty_container=True)

