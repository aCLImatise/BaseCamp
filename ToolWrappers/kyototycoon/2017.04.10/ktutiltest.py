from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Ktutiltest_V0_1_0 = CommandToolBuilder(tool="ktutiltest", base_command=["ktutiltest"], inputs=[ToolInput(tag="in_u_lim", input_type=Int(optional=True), prefix="-ulim", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_tout", input_type=Int(optional=True), prefix="-tout", doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="-port", doc=InputDocumentation(doc="")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc="")), ToolInput(tag="in_http", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rpc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ulog", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_path", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_proc", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_rnum", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktutiltest_V0_1_0().translate("wdl", allow_empty_container=True)

