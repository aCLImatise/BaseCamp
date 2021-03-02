from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Xsv_Flatten_V0_1_0 = CommandToolBuilder(tool="xsv_flatten", base_command=["xsv", "flatten"], inputs=[ToolInput(tag="in_condense", input_type=Int(optional=True), prefix="--condense", doc=InputDocumentation(doc="Limits the length of each field to the value\nspecified. If the field is UTF-8 encoded, then\n<arg> refers to the number of code points.\nOtherwise, it refers to the number of bytes.")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="A string of characters to write after each record.\nWhen non-empty, a new line is automatically\nappended to the separator.\n[default: #]")), ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will not be interpreted\nas headers. When set, the name of each field\nwill be its index.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Flatten_V0_1_0().translate("wdl", allow_empty_container=True)

