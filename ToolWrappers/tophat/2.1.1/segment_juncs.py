from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Segment_Juncs_V0_1_0 = CommandToolBuilder(tool="segment_juncs", base_command=["segment_juncs"], inputs=[ToolInput(tag="in_ref_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_segment_dot_jun_cs", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_segment_dot_insertions", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_segment_dot_deletions", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_left_reads_dot_fq", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_left_reads_dot_bwt_out", input_type=String(), position=5, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segment_Juncs_V0_1_0().translate("wdl", allow_empty_container=True)

