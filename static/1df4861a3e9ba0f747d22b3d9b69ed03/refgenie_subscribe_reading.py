from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Boolean

Refgenie_Subscribe_Reading_V0_1_0 = CommandToolBuilder(tool="refgenie_subscribe_reading", base_command=["refgenie", "subscribe", "reading"], inputs=[ToolInput(tag="in_s", input_type=Array(t=String(), optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_skip_read_lock", input_type=Boolean(optional=True), prefix="--skip-read-lock", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_genie", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_subscribe", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/refgenie:0.10.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Refgenie_Subscribe_Reading_V0_1_0().translate("wdl")

