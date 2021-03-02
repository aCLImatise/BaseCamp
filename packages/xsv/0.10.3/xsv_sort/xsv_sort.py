from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Xsv_Sort_V0_1_0 = CommandToolBuilder(tool="xsv_sort", base_command=["xsv", "sort"], inputs=[ToolInput(tag="in_select", input_type=String(optional=True), prefix="--select", doc=InputDocumentation(doc="Select a subset of columns to sort.\nSee 'xsv select --help' for the format details.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will not be interpreted\nas headers. Namely, it will be sorted with the rest\nof the rows. Otherwise, the first row will always\nappear as the header row in the output.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Sort_V0_1_0().translate("wdl", allow_empty_container=True)

