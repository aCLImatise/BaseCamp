from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Cortex_Con_31_V0_1_0 = CommandToolBuilder(tool="cortex_con_31", base_command=["cortex_con_31"], inputs=[ToolInput(tag="in_dump_binary", input_type=String(optional=True), prefix="--dump_binary", doc=InputDocumentation(doc="")), ToolInput(tag="in_mem_height", input_type=Int(optional=True), prefix="--mem_height", doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="")), ToolInput(tag="in_cortex_con", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cortex_Con_31_V0_1_0().translate("wdl", allow_empty_container=True)

