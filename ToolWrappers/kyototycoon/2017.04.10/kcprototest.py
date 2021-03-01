from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Kcprototest_V0_1_0 = CommandToolBuilder(tool="kcprototest", base_command=["kcprototest"], inputs=[ToolInput(tag="in_it", input_type=Int(optional=True), prefix="-it", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_tree", input_type=Boolean(optional=True), prefix="-tree", doc=InputDocumentation(doc="")), ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=Boolean(optional=True), prefix="-tran", doc=InputDocumentation(doc="")), ToolInput(tag="in_etc", input_type=Boolean(optional=True), prefix="-etc", doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_queue", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_8", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wicked", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kcprototest_V0_1_0().translate("wdl", allow_empty_container=True)

