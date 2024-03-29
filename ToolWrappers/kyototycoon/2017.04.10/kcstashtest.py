from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Kcstashtest_V0_1_0 = CommandToolBuilder(tool="kcstashtest", base_command=["kcstashtest"], inputs=[ToolInput(tag="in_lv", input_type=Boolean(optional=True), prefix="-lv", doc=InputDocumentation(doc="")), ToolInput(tag="in_b_num", input_type=Int(optional=True), prefix="-bnum", doc=InputDocumentation(doc="")), ToolInput(tag="in_it", input_type=Int(optional=True), prefix="-it", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=Boolean(optional=True), prefix="-tran", doc=InputDocumentation(doc="")), ToolInput(tag="in_etc", input_type=Boolean(optional=True), prefix="-etc", doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_queue", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_9", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wicked", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kcstashtest_V0_1_0().translate("wdl", allow_empty_container=True)

