from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Errno_V0_1_0 = CommandToolBuilder(tool="errno", base_command=["errno"], inputs=[ToolInput(tag="in_search_all_locales", input_type=Boolean(optional=True), prefix="--search-all-locales", doc=InputDocumentation(doc="")), ToolInput(tag="in_search", input_type=Boolean(optional=True), prefix="--search", doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="")), ToolInput(tag="in_lss", input_type=Boolean(optional=True), prefix="-lsS", doc=InputDocumentation(doc="")), ToolInput(tag="in_keyword", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Errno_V0_1_0().translate("wdl", allow_empty_container=True)

