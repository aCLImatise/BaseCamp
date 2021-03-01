from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Xsv_Table_V0_1_0 = CommandToolBuilder(tool="xsv_table", base_command=["xsv", "table"], inputs=[ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="The minimum width of each column.\n[default: 2]")), ToolInput(tag="in_pad", input_type=Int(optional=True), prefix="--pad", doc=InputDocumentation(doc="The minimum number of spaces between each column.\n[default: 2]")), ToolInput(tag="in_condense", input_type=Int(optional=True), prefix="--condense", doc=InputDocumentation(doc="Limits the length of each field to the value\nspecified. If the field is UTF-8 encoded, then\n<arg> refers to the number of code points.\nOtherwise, it refers to the number of bytes.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Table_V0_1_0().translate("wdl", allow_empty_container=True)

