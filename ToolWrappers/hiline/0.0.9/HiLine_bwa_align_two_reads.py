from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hiline_Bwa_Align_Two_Reads_V0_1_0 = CommandToolBuilder(tool="HiLine_bwa_align_two_reads", base_command=["HiLine", "bwa-align-two-reads"], inputs=[ToolInput(tag="in_no_rmd_ups", input_type=Boolean(optional=True), prefix="--no-rmdups", doc=InputDocumentation(doc="Run samtools mark_dup pipeline on alignment.\nDefault=rmdups")), ToolInput(tag="in_reads_dot_dot_dot", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Bwa_Align_Two_Reads_V0_1_0().translate("wdl", allow_empty_container=True)

