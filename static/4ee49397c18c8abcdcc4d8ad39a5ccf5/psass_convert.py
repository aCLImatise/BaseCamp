from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Psass_Convert_V0_1_0 = CommandToolBuilder(tool="psass_convert", base_command=["psass", "convert"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="TEXT    Write to an output file instead of stdout")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="TEXT    Write to an output file instead of stdout"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Psass_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

