from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Sorted_Merge_V0_1_0 = CommandToolBuilder(tool="sorted_merge", base_command=["sorted_merge"], inputs=[ToolInput(tag="in_key", input_type=Int(optional=True), prefix="--key", doc=InputDocumentation(doc="Key (1 base column number) for sorting (1)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file instead of stdout (/dev/fd/1)")), ToolInput(tag="in_numerical", input_type=Boolean(optional=True), prefix="--numerical", doc=InputDocumentation(doc="Numerical sort (false)")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file instead of stdout (/dev/fd/1)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sorted_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

