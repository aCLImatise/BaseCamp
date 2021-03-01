from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Xsv_Headers_V0_1_0 = CommandToolBuilder(tool="xsv_headers", base_command=["xsv", "headers"], inputs=[ToolInput(tag="in_just_names", input_type=Boolean(optional=True), prefix="--just-names", doc=InputDocumentation(doc="Only show the header names (hide column index).\nThis is automatically enabled if more than one\ninput is given.")), ToolInput(tag="in_intersect", input_type=Boolean(optional=True), prefix="--intersect", doc=InputDocumentation(doc="Shows the intersection of all headers in all of\nthe inputs given.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Headers_V0_1_0().translate("wdl", allow_empty_container=True)

