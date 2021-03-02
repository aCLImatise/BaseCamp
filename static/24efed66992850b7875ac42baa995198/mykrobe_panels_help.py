from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Mykrobe_Panels_Help_V0_1_0 = CommandToolBuilder(tool="mykrobe_panels_help", base_command=["mykrobe", "panels", "help"], inputs=[ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="")), ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_my_k_robe", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_panels", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mykrobe:0.9.0--py36hd181a71_2", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mykrobe_Panels_Help_V0_1_0().translate("wdl")

