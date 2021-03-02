from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Samtools_0_1_18_Idxstats_V0_1_0 = CommandToolBuilder(tool="samtools_0.1.18_idxstats", base_command=["samtools_0.1.18", "idxstats"], inputs=[ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_idx_stats", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_0_1_18_Idxstats_V0_1_0().translate("wdl", allow_empty_container=True)

