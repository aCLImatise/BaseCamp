from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Xsv_Search_V0_1_0 = CommandToolBuilder(tool="xsv_search", base_command=["xsv", "search"], inputs=[ToolInput(tag="in_ignore_case", input_type=Boolean(optional=True), prefix="--ignore-case", doc=InputDocumentation(doc="Case insensitive search. This is equivalent to\nprefixing the regex with '(?i)'.")), ToolInput(tag="in_select", input_type=String(optional=True), prefix="--select", doc=InputDocumentation(doc="Select the columns to search. See 'xsv select -h'\nfor the full syntax.")), ToolInput(tag="in_invert_match", input_type=Boolean(optional=True), prefix="--invert-match", doc=InputDocumentation(doc="Select only rows that did not match")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will not be interpreted\nas headers. (i.e., They are not searched, analyzed,\nsliced, etc.)")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n")), ToolInput(tag="in_regex", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Search_V0_1_0().translate("wdl", allow_empty_container=True)

