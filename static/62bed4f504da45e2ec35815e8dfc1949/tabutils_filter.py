from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tabutils_Filter_V0_1_0 = CommandToolBuilder(tool="tabutils_filter", base_command=["tabutils", "filter"], inputs=[ToolInput(tag="in_header", input_type=File(optional=True), prefix="-header", doc=InputDocumentation(doc="")), ToolInput(tag="in_tab_filter_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tabutils_Filter_V0_1_0().translate("wdl", allow_empty_container=True)

