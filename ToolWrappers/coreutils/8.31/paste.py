from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Paste_V0_1_0 = CommandToolBuilder(tool="paste", base_command=["paste"], inputs=[ToolInput(tag="in_delimiters", input_type=String(optional=True), prefix="--delimiters", doc=InputDocumentation(doc="reuse characters from LIST instead of TABs")), ToolInput(tag="in_serial", input_type=Boolean(optional=True), prefix="--serial", doc=InputDocumentation(doc="paste one file at a time instead of in parallel")), ToolInput(tag="in_zero_terminated", input_type=Boolean(optional=True), prefix="--zero-terminated", doc=InputDocumentation(doc="line delimiter is NUL, not newline"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paste_V0_1_0().translate("wdl", allow_empty_container=True)

