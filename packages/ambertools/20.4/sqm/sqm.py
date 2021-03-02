from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Sqm_V0_1_0 = CommandToolBuilder(tool="sqm", base_command=["sqm"], inputs=[ToolInput(tag="in_overwrite_output_file", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="Overwrite output file if it exists")), ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="Input file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file"))], outputs=[ToolOutput(tag="out_overwrite_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_overwrite_output_file", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output file if it exists")), ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sqm_V0_1_0().translate("wdl", allow_empty_container=True)

