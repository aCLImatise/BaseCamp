from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Coolbox_Current_Range_Sort_V0_1_0 = CommandToolBuilder(tool="coolbox_current_range_sort", base_command=["coolbox", "current_range", "sort"], inputs=[ToolInput(tag="in_key", input_type=Boolean(optional=True), prefix="--key", doc=InputDocumentation(doc="=[4mKEY[0m")), ToolInput(tag="in_reverse", input_type=Boolean(optional=True), prefix="--reverse", doc=InputDocumentation(doc="=[4mREVERSE[0m"))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Current_Range_Sort_V0_1_0().translate("wdl")

