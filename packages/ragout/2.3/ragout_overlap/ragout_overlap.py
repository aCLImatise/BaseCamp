from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ragout_Overlap_V0_1_0 = CommandToolBuilder(tool="ragout_overlap", base_command=["ragout-overlap"], inputs=[ToolInput(tag="in_hist", input_type=Boolean(optional=True), prefix="--hist", doc=InputDocumentation(doc="")), ToolInput(tag="in_detect_km_er", input_type=Boolean(optional=True), prefix="--detect-kmer", doc=InputDocumentation(doc="")), ToolInput(tag="in_overlap", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_in", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_dot_out", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_k", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_k", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragout_Overlap_V0_1_0().translate("wdl", allow_empty_container=True)

