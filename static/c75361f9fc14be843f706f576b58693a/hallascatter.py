from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Hallascatter_V0_1_0 = CommandToolBuilder(tool="hallascatter", base_command=["hallascatter"], inputs=[ToolInput(tag="in_input", input_type=Directory(optional=True), prefix="--input", doc=InputDocumentation(doc="HAllA output directory")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="output file name"))], outputs=[ToolOutput(tag="out_input", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_input", type_hint=File()), doc=OutputDocumentation(doc="HAllA output directory")), ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output file name"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hallascatter_V0_1_0().translate("wdl", allow_empty_container=True)

