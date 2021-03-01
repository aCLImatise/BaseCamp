from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Rebaler_Reads_V0_1_0 = CommandToolBuilder(tool="rebaler_reads", base_command=["rebaler", "reads"], inputs=[ToolInput(tag="in_random", input_type=Boolean(optional=True), prefix="--random", doc=InputDocumentation(doc="")), ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_re_baler", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rebaler_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

