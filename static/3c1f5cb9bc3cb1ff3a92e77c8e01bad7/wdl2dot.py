from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Wdl2Dot_V0_1_0 = CommandToolBuilder(tool="wdl2dot", base_command=["wdl2dot"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input_file", doc=InputDocumentation(doc="Input wdl file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc="Output dot file\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output dot file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wdl2Dot_V0_1_0().translate("wdl", allow_empty_container=True)

