from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hiline_Save_Stats_V0_1_0 = CommandToolBuilder(tool="HiLine_save_stats", base_command=["HiLine", "save-stats"], inputs=[ToolInput(tag="in_location_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container="quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Save_Stats_V0_1_0().translate("wdl")

