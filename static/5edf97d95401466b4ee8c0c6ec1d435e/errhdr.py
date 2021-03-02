from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Errhdr_V0_1_0 = CommandToolBuilder(tool="errhdr", base_command=["errhdr"], inputs=[ToolInput(tag="in_codesubcode_tuples", input_type=Int(optional=True), prefix="-2", doc=InputDocumentation(doc="code,subcode tuples")), ToolInput(tag="in_short_subcode_defines", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="short subcode defines")), ToolInput(tag="in_msg_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hdr_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Errhdr_V0_1_0().translate("wdl", allow_empty_container=True)

