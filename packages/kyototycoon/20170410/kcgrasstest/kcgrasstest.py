from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Kcgrasstest_V0_1_0 = CommandToolBuilder(tool="kcgrasstest", base_command=["kcgrasstest"], inputs=[ToolInput(tag="in_pc_cap", input_type=Int(optional=True), prefix="-pccap", doc=InputDocumentation(doc="")), ToolInput(tag="in_psi_z", input_type=Int(optional=True), prefix="-psiz", doc=InputDocumentation(doc="")), ToolInput(tag="in_b_num", input_type=Int(optional=True), prefix="-bnum", doc=InputDocumentation(doc="")), ToolInput(tag="in_tc", input_type=Boolean(optional=True), prefix="-tc", doc=InputDocumentation(doc="")), ToolInput(tag="in_it", input_type=Int(optional=True), prefix="-it", doc=InputDocumentation(doc="")), ToolInput(tag="in_th", input_type=Int(optional=True), prefix="-th", doc=InputDocumentation(doc="")), ToolInput(tag="in_rnd", input_type=Boolean(optional=True), prefix="-rnd", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_7", input_type=Boolean(optional=True), prefix="-tran", doc=InputDocumentation(doc="")), ToolInput(tag="in_etc", input_type=Boolean(optional=True), prefix="-etc", doc=InputDocumentation(doc="")), ToolInput(tag="in_order", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_queue", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_11", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_wicked", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/kyototycoon:20170410--h896b458_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kcgrasstest_V0_1_0().translate("wdl")

