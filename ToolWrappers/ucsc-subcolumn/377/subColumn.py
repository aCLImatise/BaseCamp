from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Subcolumn_V0_1_0 = CommandToolBuilder(tool="subColumn", base_command=["subColumn"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="-list", doc=InputDocumentation(doc="- Column is a comma-separated list.  Substitute all elements in list")), ToolInput(tag="in_miss", input_type=File(optional=True), prefix="-miss", doc=InputDocumentation(doc="- Print misses to this file instead of aborting")), ToolInput(tag="in_column", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_tab", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_sub_dot_tab", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Subcolumn_V0_1_0().translate("wdl", allow_empty_container=True)

