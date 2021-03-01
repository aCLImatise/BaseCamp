from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Makeignorelist_V0_1_0 = CommandToolBuilder(tool="makeIgnoreList", base_command=["makeIgnoreList"], inputs=[ToolInput(tag="in_m", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeignorelist_V0_1_0().translate("wdl", allow_empty_container=True)

