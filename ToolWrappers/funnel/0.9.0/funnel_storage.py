from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Funnel_Storage_V0_1_0 = CommandToolBuilder(tool="funnel_storage", base_command=["funnel", "storage"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Config File")), ToolInput(tag="in_get", input_type=String(), position=0, doc=InputDocumentation(doc="Get the object at the given URL.")), ToolInput(tag="in_list", input_type=String(), position=1, doc=InputDocumentation(doc="List objects at the given URL.")), ToolInput(tag="in_put", input_type=String(), position=2, doc=InputDocumentation(doc="Put the local file to the given URL.")), ToolInput(tag="in_stat", input_type=String(), position=3, doc=InputDocumentation(doc="Returns information about the object at the given URL.")), ToolInput(tag="in_stat_task", input_type=String(), position=4, doc=InputDocumentation(doc="Returns information about inputs/outputs of the task."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funnel_Storage_V0_1_0().translate("wdl", allow_empty_container=True)

