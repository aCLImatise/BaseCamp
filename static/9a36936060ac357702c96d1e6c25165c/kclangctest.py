from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Kclangctest_V0_1_0 = CommandToolBuilder(tool="kclangctest", base_command=["kclangctest"], inputs=[ToolInput(tag="in_etc", input_type=Boolean(optional=True), prefix="-etc", doc=InputDocumentation(doc="")), ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_b_num", input_type=Int(optional=True), prefix="-bnum", doc=InputDocumentation(doc="")), ToolInput(tag="in_tran", input_type=Boolean(optional=True), prefix="-tran", doc=InputDocumentation(doc="")), ToolInput(tag="in_index", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_list", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_map", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kclangctest_V0_1_0().translate("wdl")

