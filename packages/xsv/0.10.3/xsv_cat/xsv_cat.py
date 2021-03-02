from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Xsv_Cat_V0_1_0 = CommandToolBuilder(tool="xsv_cat", base_command=["xsv", "cat"], inputs=[ToolInput(tag="in_pad", input_type=Boolean(optional=True), prefix="--pad", doc=InputDocumentation(doc="When concatenating columns, this flag will cause\nall records to appear. It will pad each row if\nother CSV data isn't long enough.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will NOT be interpreted\nas column names. Note that this has no effect when\nconcatenating columns.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n")), ToolInput(tag="in_columns", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rows", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Cat_V0_1_0().translate("wdl", allow_empty_container=True)

