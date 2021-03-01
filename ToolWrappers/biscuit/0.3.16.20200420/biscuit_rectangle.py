from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Biscuit_Rectangle_V0_1_0 = CommandToolBuilder(tool="biscuit_rectangle", base_command=["biscuit", "rectangle"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="output file [stdout]")), ToolInput(tag="in_ref_dot_fa", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="output file [stdout]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biscuit_Rectangle_V0_1_0().translate("wdl", allow_empty_container=True)

