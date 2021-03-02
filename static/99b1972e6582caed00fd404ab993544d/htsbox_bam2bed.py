from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Htsbox_Bam2Bed_V0_1_0 = CommandToolBuilder(tool="htsbox_bam2bed", base_command=["htsbox", "bam2bed"], inputs=[ToolInput(tag="in_se", input_type=Boolean(optional=True), prefix="-Se", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_two_bed", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Htsbox_Bam2Bed_V0_1_0().translate("wdl", allow_empty_container=True)

