from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Abyss_Gapfill_V0_1_0 = CommandToolBuilder(tool="abyss_gapfill", base_command=["abyss-gapfill"], inputs=[ToolInput(tag="in_min_align", input_type=Int(optional=True), prefix="--min-align", doc=InputDocumentation(doc="the minimal alignment size [1]")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="display verbose output"))], outputs=[], container="quay.io/biocontainers/abyss:2.3.1--hd403d74_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Abyss_Gapfill_V0_1_0().translate("wdl")

