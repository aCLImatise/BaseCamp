from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Hpc_Repmask_V0_1_0 = CommandToolBuilder(tool="HPC.REPmask", base_command=["HPC.REPmask"], inputs=[ToolInput(tag="in_int_cint_readsdbdam", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="<int> -c<int> <reads:db|dam> [<block:int>[-<range:int>]")), ToolInput(tag="in_t", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_vbd", input_type=Boolean(optional=True), prefix="-vbd", doc=InputDocumentation(doc="")), ToolInput(tag="in_int", input_type=Int(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hpc_Repmask_V0_1_0().translate("wdl", allow_empty_container=True)

