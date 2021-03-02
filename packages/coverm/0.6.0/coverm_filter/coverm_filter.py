from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coverm_Filter_V0_1_0 = CommandToolBuilder(tool="coverm_filter", base_command=["coverm", "filter"], inputs=[ToolInput(tag="in_bam_files", input_type=String(optional=True), prefix="--bam-files", doc=InputDocumentation(doc="")), ToolInput(tag="in_flags", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/coverm:0.6.0--hc216eb9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverm_Filter_V0_1_0().translate("wdl")

