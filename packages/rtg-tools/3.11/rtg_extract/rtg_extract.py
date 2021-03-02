from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Rtg_Extract_V0_1_0 = CommandToolBuilder(tool="rtg_extract", base_command=["rtg", "extract"], inputs=[ToolInput(tag="in_header", input_type=Boolean(optional=True), prefix="--header", doc=InputDocumentation(doc="print out header also")), ToolInput(tag="in_header_only", input_type=String(optional=True), prefix="--header-only", doc=InputDocumentation(doc="out header only")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="the indexed block compressed genome position data file to")), ToolInput(tag="in_extract", input_type=String(), position=1, doc=InputDocumentation(doc="Filtering")), ToolInput(tag="in_times", input_type=String(), position=0, doc=InputDocumentation(doc="Reporting"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rtg_Extract_V0_1_0().translate("wdl", allow_empty_container=True)

