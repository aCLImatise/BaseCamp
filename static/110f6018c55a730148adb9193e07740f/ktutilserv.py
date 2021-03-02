from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Ktutilserv_V0_1_0 = CommandToolBuilder(tool="ktutilserv", base_command=["ktutilserv"], inputs=[ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_tout", input_type=Int(optional=True), prefix="-tout", doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="-port", doc=InputDocumentation(doc="")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc="")), ToolInput(tag="in_echo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_http", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mt_echo", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rpc", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktutilserv_V0_1_0().translate("wdl", allow_empty_container=True)

