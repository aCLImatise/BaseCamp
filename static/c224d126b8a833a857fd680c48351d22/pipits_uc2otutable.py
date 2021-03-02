from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Pipits_Uc2Otutable_V0_1_0 = CommandToolBuilder(tool="pipits_uc2otutable", base_command=["pipits_uc2otutable"], inputs=[ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="[REQUIRED]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="[REQUIRED]")), ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="[REQUIRED]")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_writes", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_each", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_entry", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_as", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_a", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_single", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot", input_type=File(), position=8, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pipits_Uc2Otutable_V0_1_0().translate("wdl", allow_empty_container=True)

