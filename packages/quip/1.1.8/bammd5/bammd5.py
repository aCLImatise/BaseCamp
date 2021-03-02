from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bammd5_V0_1_0 = CommandToolBuilder(tool="bammd5", base_command=["bammd5"], inputs=[ToolInput(tag="in_input_sam_default", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="input is SAM (by default BAM is assumed)")), ToolInput(tag="in_cat", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_reads_dot_bam", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/quip:1.1.8--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bammd5_V0_1_0().translate("wdl")

