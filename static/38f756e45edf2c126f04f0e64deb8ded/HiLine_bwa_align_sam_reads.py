from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hiline_Bwa_Align_Sam_Reads_V0_1_0 = CommandToolBuilder(tool="HiLine_bwa_align_sam_reads", base_command=["HiLine", "bwa-align-sam-reads"], inputs=[ToolInput(tag="in_no_rmd_ups", input_type=Boolean(optional=True), prefix="--no-rmdups", doc=InputDocumentation(doc="Run samtools mark_dup pipeline on alignment.\nDefault=rmdups")), ToolInput(tag="in_tag", input_type=String(optional=True), prefix="--tag", doc=InputDocumentation(doc="SAM tag(s) to append to reads.")), ToolInput(tag="in_reads", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Bwa_Align_Sam_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

