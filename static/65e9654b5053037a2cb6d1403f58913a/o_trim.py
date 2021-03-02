from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

O_Trim_V0_1_0 = CommandToolBuilder(tool="o_trim", base_command=["o-trim"], inputs=[ToolInput(tag="in_trim_from", input_type=Int(optional=True), prefix="--trim-from", doc=InputDocumentation(doc="Start position")), ToolInput(tag="in_trim_to", input_type=Int(optional=True), prefix="--trim-to", doc=InputDocumentation(doc="End position")), ToolInput(tag="in_min_length", input_type=Int(optional=True), prefix="--min-length", doc=InputDocumentation(doc="Minimum lenght of a read to be kept")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file name.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file name.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    O_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

