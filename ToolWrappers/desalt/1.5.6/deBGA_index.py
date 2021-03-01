from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Debga_Index_V0_1_0 = CommandToolBuilder(tool="deBGA_index", base_command=["deBGA", "index"], inputs=[ToolInput(tag="in_reference_dot_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_route", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Debga_Index_V0_1_0().translate("wdl", allow_empty_container=True)

