from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Vtools_Show_Items_V0_1_0 = CommandToolBuilder(tool="vtools_show_items", base_command=["vtools", "show", "items"], inputs=[ToolInput(tag="in_v", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_v_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_show", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Show_Items_V0_1_0().translate("wdl", allow_empty_container=True)

