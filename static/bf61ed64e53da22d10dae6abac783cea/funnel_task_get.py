from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Funnel_Task_Get_V0_1_0 = CommandToolBuilder(tool="funnel_task_get", base_command=["funnel", "task", "get"], inputs=[ToolInput(tag="in_view", input_type=String(optional=True), prefix="--view", doc=InputDocumentation(doc="Task view (default 'full')")), ToolInput(tag="in_task_id", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funnel_Task_Get_V0_1_0().translate("wdl", allow_empty_container=True)

