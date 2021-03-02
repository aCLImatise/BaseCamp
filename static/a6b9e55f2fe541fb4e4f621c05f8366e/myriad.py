from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Myriad_V0_1_0 = CommandToolBuilder(tool="myriad", base_command=["myriad"], inputs=[ToolInput(tag="in_max_items", input_type=String(optional=True), prefix="--max_items", doc=InputDocumentation(doc="Run client")), ToolInput(tag="in_server_client", input_type=Boolean(optional=True), prefix="--serverclient", doc=InputDocumentation(doc="Run server-client demo"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Myriad_V0_1_0().translate("wdl", allow_empty_container=True)

