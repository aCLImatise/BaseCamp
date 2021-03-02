from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String, File

Shuf_V0_1_0 = CommandToolBuilder(tool="shuf", base_command=["shuf"], inputs=[ToolInput(tag="in_echo", input_type=Boolean(optional=True), prefix="--echo", doc=InputDocumentation(doc="treat each ARG as an input line")), ToolInput(tag="in_input_range", input_type=Int(optional=True), prefix="--input-range", doc=InputDocumentation(doc="treat each number LO through HI as an input line")), ToolInput(tag="in_head_count", input_type=String(optional=True), prefix="--head-count", doc=InputDocumentation(doc="output at most COUNT lines")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="write result to FILE instead of standard output")), ToolInput(tag="in_random_source", input_type=File(optional=True), prefix="--random-source", doc=InputDocumentation(doc="get random bytes from FILE")), ToolInput(tag="in_repeat", input_type=Boolean(optional=True), prefix="--repeat", doc=InputDocumentation(doc="output lines can be repeated")), ToolInput(tag="in_zero_terminated", input_type=Boolean(optional=True), prefix="--zero-terminated", doc=InputDocumentation(doc="line delimiter is NUL, not newline"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="write result to FILE instead of standard output"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Shuf_V0_1_0().translate("wdl", allow_empty_container=True)

