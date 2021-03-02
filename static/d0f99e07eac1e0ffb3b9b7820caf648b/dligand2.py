from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Dligand2_V0_1_0 = CommandToolBuilder(tool="dligand2", base_command=["dligand2"], inputs=[ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dligand2:0.1.0--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dligand2_V0_1_0().translate("wdl")

