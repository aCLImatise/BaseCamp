from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Hiline_Read_Sam_V0_1_0 = CommandToolBuilder(tool="HiLine_read_sam", base_command=["HiLine", "read-sam"], inputs=[ToolInput(tag="in_no_rmd_ups", input_type=Boolean(optional=True), prefix="--no-rmdups", doc=InputDocumentation(doc="Run samtools mark_dup pipeline on alignment.\nDefault=rmdups")), ToolInput(tag="in_sam", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/hiline:0.2.2--py38hc9558a2_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Read_Sam_V0_1_0().translate("wdl")

