from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Tabutils_View_V0_1_0 = CommandToolBuilder(tool="tabutils_view", base_command=["tabutils", "view"], inputs=[ToolInput(tag="in_number_read_estimate", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="The number of lines to read in to estimate the size of a column.\n[default 100]")), ToolInput(tag="in_use_opposed_tab", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="Use this (opposed to a tab) for the delimiter")), ToolInput(tag="in_max", input_type=Int(optional=True), prefix="-max", doc=InputDocumentation(doc="The maximum length of a column (default: unlimited)")), ToolInput(tag="in_min", input_type=Int(optional=True), prefix="-min", doc=InputDocumentation(doc="The minimum length of a column (default: 0)")), ToolInput(tag="in_tab_view_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabutils_View_V0_1_0().translate("wdl", allow_empty_container=True)

