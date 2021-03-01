from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Samtools_0_1_18_Cat_V0_1_0 = CommandToolBuilder(tool="samtools_0.1.18_cat", base_command=["samtools_0.1.18", "cat"], inputs=[ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_h", input_type=String(optional=True), prefix="-h", doc=InputDocumentation(doc="")), ToolInput(tag="in_sam_tools", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cat", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one_dot_bam", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two_dot_bam", input_type=Int(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Samtools_0_1_18_Cat_V0_1_0().translate("wdl", allow_empty_container=True)

