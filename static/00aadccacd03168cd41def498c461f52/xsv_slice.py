from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Xsv_Slice_V0_1_0 = CommandToolBuilder(tool="xsv_slice", base_command=["xsv", "slice"], inputs=[ToolInput(tag="in_start", input_type=String(optional=True), prefix="--start", doc=InputDocumentation(doc="The index of the record to slice from.")), ToolInput(tag="in_end", input_type=String(optional=True), prefix="--end", doc=InputDocumentation(doc="The index of the record to slice to.")), ToolInput(tag="in_len", input_type=Int(optional=True), prefix="--len", doc=InputDocumentation(doc="The length of the slice (can be used instead\nof --end).")), ToolInput(tag="in_index", input_type=Int(optional=True), prefix="--index", doc=InputDocumentation(doc="Slice a single record (shortcut for -s N -l 1).")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will not be interpreted\nas headers. Otherwise, the first row will always\nappear in the output as the header row.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Slice_V0_1_0().translate("wdl", allow_empty_container=True)

