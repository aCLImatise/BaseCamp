from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Varda2_Client_Task_V0_1_0 = CommandToolBuilder(tool="varda2_client_task", base_command=["varda2-client", "task"], inputs=[ToolInput(tag="in_uuid", input_type=String(optional=True), prefix="--uuid", doc=InputDocumentation(doc="Task UUID"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Varda2_Client_Task_V0_1_0().translate("wdl", allow_empty_container=True)

