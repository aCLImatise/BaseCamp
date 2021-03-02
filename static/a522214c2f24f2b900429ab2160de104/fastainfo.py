from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Fastainfo_V0_1_0 = CommandToolBuilder(tool="fastainfo", base_command=["fastainfo"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="The input files")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="The output file name."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="The output file name."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastainfo_V0_1_0().translate("wdl", allow_empty_container=True)

