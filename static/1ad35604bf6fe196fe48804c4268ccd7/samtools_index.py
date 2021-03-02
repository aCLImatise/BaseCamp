from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Samtools_Index_V0_1_0 = CommandToolBuilder(tool="samtools_index", base_command=["samtools", "index"], inputs=[ToolInput(tag="in_in_dot_bam", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dot_index", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_Index_V0_1_0().translate("wdl", allow_empty_container=True)

