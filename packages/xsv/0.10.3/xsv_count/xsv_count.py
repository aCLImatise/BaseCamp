from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Xsv_Count_V0_1_0 = CommandToolBuilder(tool="xsv_count", base_command=["xsv", "count"], inputs=[ToolInput(tag="in_no_headers", input_type=Boolean(optional=True), prefix="--no-headers", doc=InputDocumentation(doc="When set, the first row will not be included in\nthe count.")), ToolInput(tag="in_delimiter", input_type=String(optional=True), prefix="--delimiter", doc=InputDocumentation(doc="The field delimiter for reading CSV data.\nMust be a single character. (default: ,)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsv_Count_V0_1_0().translate("wdl", allow_empty_container=True)

