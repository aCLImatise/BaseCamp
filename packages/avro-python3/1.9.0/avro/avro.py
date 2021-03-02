from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean, File

Avro_V0_1_0 = CommandToolBuilder(tool="avro", base_command=["avro"], inputs=[ToolInput(tag="in_count", input_type=Int(optional=True), prefix="--count", doc=InputDocumentation(doc="number of records to print")), ToolInput(tag="in_skip", input_type=Int(optional=True), prefix="--skip", doc=InputDocumentation(doc="number of records to skip")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="record format")), ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="print CSV header")), ToolInput(tag="in_filter", input_type=Int(optional=True), prefix="--filter", doc=InputDocumentation(doc="filter records (e.g. r['age']>1)")), ToolInput(tag="in_print_schema", input_type=Boolean(optional=True), prefix="--print-schema", doc=InputDocumentation(doc="print schema")), ToolInput(tag="in_fields", input_type=String(optional=True), prefix="--fields", doc=InputDocumentation(doc="fields to show, comma separated (show all by default)")), ToolInput(tag="in_schema", input_type=File(optional=True), prefix="--schema", doc=InputDocumentation(doc="schema file (required)")), ToolInput(tag="in_input_type", input_type=String(optional=True), prefix="--input-type", doc=InputDocumentation(doc="input file(s) type (json or csv)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="output file\n")), ToolInput(tag="in_cat_vertical_line_write", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Avro_V0_1_0().translate("wdl", allow_empty_container=True)

