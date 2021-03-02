from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Quickmerge_V0_1_0 = CommandToolBuilder(tool="quickmerge", base_command=["quickmerge"], inputs=[ToolInput(tag="in_hco", input_type=Boolean(optional=True), prefix="-hco", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=String(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_d", output_type=File(optional=True), selector=InputSelector(input_to_select="in_d", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Quickmerge_V0_1_0().translate("wdl", allow_empty_container=True)

