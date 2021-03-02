from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Ma_V0_1_0 = CommandToolBuilder(tool="ma", base_command=["ma"], inputs=[ToolInput(tag="in_format_output_pipe", input_type=File(optional=True), prefix="-C", doc=InputDocumentation(doc="format 6 output -> don't pipe this output to file!"))], outputs=[ToolOutput(tag="out_format_output_pipe", output_type=File(optional=True), selector=InputSelector(input_to_select="in_format_output_pipe", type_hint=File()), doc=OutputDocumentation(doc="format 6 output -> don't pipe this output to file!"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ma_V0_1_0().translate("wdl", allow_empty_container=True)

