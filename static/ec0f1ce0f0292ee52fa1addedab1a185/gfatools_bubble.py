from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Gfatools_Bubble_V0_1_0 = CommandToolBuilder(tool="gfatools_bubble", base_command=["gfatools", "bubble"], inputs=[ToolInput(tag="in_in_dot_gfa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gfatools:0.5--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gfatools_Bubble_V0_1_0().translate("wdl")

