from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tinysink_V0_1_0 = CommandToolBuilder(tool="tinysink", base_command=["tinysink"], inputs=[ToolInput(tag="in_user", input_type=String(optional=True), prefix="--User", doc=InputDocumentation(doc="to log into the server with. [REQUIRED].")), ToolInput(tag="in_server", input_type=String(optional=True), prefix="--Server", doc=InputDocumentation(doc="to transfer to. [REQUIRED].")), ToolInput(tag="in_displays", input_type=String(optional=True), prefix="--Displays", doc=InputDocumentation(doc="help message. No further functions are performed."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tinysink_V0_1_0().translate("wdl", allow_empty_container=True)

