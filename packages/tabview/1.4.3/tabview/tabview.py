from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Tabview_V0_1_0 = CommandToolBuilder(tool="tabview", base_command=["tabview"], inputs=[ToolInput(tag="in_encoding", input_type=File(optional=True), prefix="--encoding", doc=InputDocumentation(doc="Encoding, if required. If the file is UTF-8,\nLatin-1(iso8859-1) or a few other common encodings, it\nshould be detected automatically. If not, you can pass\n'CP720', or 'iso8859-2', for example.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="CSV delimiter. Not typically necessary since automatic\ndelimiter sniffing is used.")), ToolInput(tag="in_quoting", input_type=String(optional=True), prefix="--quoting", doc=InputDocumentation(doc="CSV quoting style. Not typically required.")), ToolInput(tag="in_start_pos", input_type=Int(optional=True), prefix="--start_pos", doc=InputDocumentation(doc="Initial cursor display position. Single number for\njust y (row) position, or two comma-separated numbers\n(--start_pos 2,3) for both. Alternatively, you can\npass the numbers in the more classic +y:[x] format\nwithout the --start_pos label. Like 'tabview <fn>\n+5:10'")), ToolInput(tag="in_width", input_type=Int(optional=True), prefix="--width", doc=InputDocumentation(doc="Specify column width. 'max' or 'mode' (default) for\nvariable widths, or an integer value for fixed column\nwidth.")), ToolInput(tag="in_double_width", input_type=Boolean(optional=True), prefix="--double_width", doc=InputDocumentation(doc="Force full handling of double-width characters for\nlarge files (with a performance penalty)")), ToolInput(tag="in_quote_char", input_type=String(optional=True), prefix="--quote-char", doc=InputDocumentation(doc="Quote character. Not typically necessary.\n")), ToolInput(tag="in_instead_dot", input_type=String(), position=1, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabview_V0_1_0().translate("wdl", allow_empty_container=True)

