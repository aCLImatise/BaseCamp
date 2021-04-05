from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Ktremotetest_V0_1_0 = CommandToolBuilder(tool="ktremotetest", base_command=["ktremotetest"], inputs=[ToolInput(tag="in_iv", input_type=Int(optional=True), prefix="-iv", doc=InputDocumentation(doc="")), ToolInput(tag="in_xt", input_type=Int(optional=True), prefix="-xt", doc=InputDocumentation(doc="")), ToolInput(tag="in_vs", input_type=Int(optional=True), prefix="-vs", doc=InputDocumentation(doc="")), ToolInput(tag="in_kp", input_type=Int(optional=True), prefix="-kp", doc=InputDocumentation(doc="")), ToolInput(tag="in_tout", input_type=Int(optional=True), prefix="-tout", doc=InputDocumentation(doc="")), ToolInput(tag="in_port", input_type=Int(optional=True), prefix="-port", doc=InputDocumentation(doc="")), ToolInput(tag="in_host", input_type=String(optional=True), prefix="-host", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_it", input_type=Int(optional=True), prefix="-it", doc=InputDocumentation(doc="")), ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_bin", input_type=Boolean(optional=True), prefix="-bin", doc=InputDocumentation(doc="")), ToolInput(tag="in_bulk", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_usual", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wicked", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ktremotetest_V0_1_0().translate("wdl")

