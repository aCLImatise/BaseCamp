from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Crux_Subtract_Index_V0_1_0 = CommandToolBuilder(tool="crux_subtract_index", base_command=["crux", "subtract-index"], inputs=[ToolInput(tag="in_tide_index_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tide_index_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Subtract_Index_V0_1_0().translate("wdl", allow_empty_container=True)

