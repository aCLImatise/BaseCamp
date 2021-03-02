from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Funnel_Task_List_V0_1_0 = CommandToolBuilder(tool="funnel_task_list", base_command=["funnel", "task", "list"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="List all tasks")), ToolInput(tag="in_page_size", input_type=Int(optional=True), prefix="--page-size", doc=InputDocumentation(doc="Page size")), ToolInput(tag="in_page_token", input_type=String(optional=True), prefix="--page-token", doc=InputDocumentation(doc="Page token")), ToolInput(tag="in_state", input_type=String(optional=True), prefix="--state", doc=InputDocumentation(doc="State filter")), ToolInput(tag="in_tag", input_type=String(optional=True), prefix="--tag", doc=InputDocumentation(doc="Tag filter. May be used multiple times to specify more than one tag")), ToolInput(tag="in_view", input_type=String(optional=True), prefix="--view", doc=InputDocumentation(doc="Task view (default 'basic')"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funnel_Task_List_V0_1_0().translate("wdl", allow_empty_container=True)

