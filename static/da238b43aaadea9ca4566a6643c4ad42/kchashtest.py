from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Kchashtest_V0_1_0 = CommandToolBuilder(tool="kchashtest", base_command=["kchashtest"], inputs=[ToolInput(tag="in_hard", input_type=Boolean(optional=True), prefix="-hard", doc=InputDocumentation(doc="")), ToolInput(tag="in_it", input_type=Int(optional=True), prefix="-it", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_queue", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_tran", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wicked", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kchashtest_V0_1_0().translate("wdl")

