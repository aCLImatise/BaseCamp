from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Xsv_Fmt_V0_1_0 = CommandToolBuilder(tool="xsv_fmt", base_command=["xsv", "fmt"], inputs=[ToolInput(tag="in_out_delimiter", input_type=String(optional=True), prefix="--out-delimiter", doc=InputDocumentation(doc="The field delimiter for writing CSV data.\n[default: ,]")), ToolInput(tag="in_crlf", input_type=Boolean(optional=True), prefix="--crlf", doc=InputDocumentation(doc="Use '\r\n' line endings in the output.")), ToolInput(tag="in_ascii", input_type=Boolean(optional=True), prefix="--ascii", doc=InputDocumentation(doc="Use ASCII field and record separators.")), ToolInput(tag="in_quote", input_type=String(optional=True), prefix="--quote", doc=InputDocumentation(doc="The quote character to use. [default: ']")), ToolInput(tag="in_quote_always", input_type=Boolean(optional=True), prefix="--quote-always", doc=InputDocumentation(doc="Put quotes around every value.")), ToolInput(tag="in_escape", input_type=String(optional=True), prefix="--escape", doc=InputDocumentation(doc="The escape character to use. When not specified,\nquotes are escaped by doubling them.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Write output to <file> instead of stdout.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. [default: ,]\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Write output to <file> instead of stdout."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Fmt_V0_1_0().translate("wdl", allow_empty_container=True)

