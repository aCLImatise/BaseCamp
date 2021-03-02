from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Piconv_V0_1_0 = CommandToolBuilder(tool="piconv", base_command=["piconv"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="lists all available encodings")), ToolInput(tag="in_resolve", input_type=String(optional=True), prefix="--resolve", doc=InputDocumentation(doc="resolve encoding to its (Encode) canonical name")), ToolInput(tag="in_from", input_type=String(optional=True), prefix="--from", doc=InputDocumentation(doc="when omitted, the current locale will be used")), ToolInput(tag="in_to", input_type=String(optional=True), prefix="--to", doc=InputDocumentation(doc="when omitted, the current locale will be used")), ToolInput(tag="in_string", input_type=String(optional=True), prefix="--string", doc=InputDocumentation(doc="'string' will be the input instead of STDIN or files")), ToolInput(tag="in_check_validity_input", input_type=String(optional=True), prefix="-C", doc=InputDocumentation(doc="check the validity of the input")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="show debug information")), ToolInput(tag="in_scheme", input_type=String(optional=True), prefix="--scheme", doc=InputDocumentation(doc="use the scheme for conversion")), ToolInput(tag="in_perl_qq", input_type=Boolean(optional=True), prefix="--perlqq", doc=InputDocumentation(doc="transliterate characters missing in encoding to \x{HHHH}\nwhere HHHH is the hexadecimal Unicode code point")), ToolInput(tag="in_html_cref", input_type=Boolean(optional=True), prefix="--htmlcref", doc=InputDocumentation(doc="transliterate characters missing in encoding to &#NNN;\nwhere NNN is the decimal Unicode code point")), ToolInput(tag="in_xml_cref", input_type=Boolean(optional=True), prefix="--xmlcref", doc=InputDocumentation(doc="transliterate characters missing in encoding to &#xHHHH;\nwhere HHHH is the hexadecimal Unicode code point\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Piconv_V0_1_0().translate("wdl", allow_empty_container=True)

