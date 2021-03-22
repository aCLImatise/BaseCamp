from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hiline_Good_Reads_V0_1_0 = CommandToolBuilder(tool="HiLine_good_reads", base_command=["HiLine", "good-reads"], inputs=[ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="--no-sort", doc=InputDocumentation(doc="Sort and index output. Default=sort")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Good_Reads_V0_1_0().translate("wdl")

