from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Bam_Merge_V0_1_0 = CommandToolBuilder(tool="bam_merge", base_command=["bam_merge"], inputs=[ToolInput(tag="in_q", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_bam", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

