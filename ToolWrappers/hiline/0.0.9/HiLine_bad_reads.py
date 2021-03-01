from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hiline_Bad_Reads_V0_1_0 = CommandToolBuilder(tool="HiLine_bad_reads", base_command=["HiLine", "bad-reads"], inputs=[ToolInput(tag="in_no_sort", input_type=Boolean(optional=True), prefix="--no-sort", doc=InputDocumentation(doc="Sort and index output. Default=sort")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Bad_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

