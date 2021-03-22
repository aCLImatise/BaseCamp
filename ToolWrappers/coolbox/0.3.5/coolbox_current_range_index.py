from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coolbox_Current_Range_Index_V0_1_0 = CommandToolBuilder(tool="coolbox_current_range_index", base_command=["coolbox", "current_range", "index"], inputs=[ToolInput(tag="in_value", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_start", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_stop", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/coolbox:0.3.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coolbox_Current_Range_Index_V0_1_0().translate("wdl")

