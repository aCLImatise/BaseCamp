from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Longgf_V0_1_0 = CommandToolBuilder(tool="LongGF", base_command=["LongGF"], inputs=[ToolInput(tag="in_input_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_gtf", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_overlap_len", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_bin_size", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_map_len", input_type=Int(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/longgf:0.1.2--h179b981_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Longgf_V0_1_0().translate("wdl")

