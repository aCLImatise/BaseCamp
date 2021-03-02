from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Ktutilmgr_V0_1_0 = CommandToolBuilder(tool="ktutilmgr", base_command=["ktutilmgr"], inputs=[ToolInput(tag="in_uf", input_type=Boolean(optional=True), prefix="-uf", doc=InputDocumentation(doc="")), ToolInput(tag="in_uw", input_type=Boolean(optional=True), prefix="-uw", doc=InputDocumentation(doc="")), ToolInput(tag="in_ts", input_type=Int(optional=True), prefix="-ts", doc=InputDocumentation(doc="")), ToolInput(tag="in_oe_nc", input_type=String(optional=True), prefix="-oenc", doc=InputDocumentation(doc="")), ToolInput(tag="in_i_enc", input_type=String(optional=True), prefix="-ienc", doc=InputDocumentation(doc="")), ToolInput(tag="in_tout", input_type=Int(optional=True), prefix="-tout", doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="-port", doc=InputDocumentation(doc="")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc="")), ToolInput(tag="in_wf", input_type=Boolean(optional=True), prefix="-wf", doc=InputDocumentation(doc="")), ToolInput(tag="in_jl", input_type=Int(optional=True), prefix="-jl", doc=InputDocumentation(doc="")), ToolInput(tag="in_ds", input_type=String(optional=True), prefix="-ds", doc=InputDocumentation(doc="")), ToolInput(tag="in_conf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_date", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_http", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_rpc", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ulog", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_proc", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktutilmgr_V0_1_0().translate("wdl", allow_empty_container=True)

