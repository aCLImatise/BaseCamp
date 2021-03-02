from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Transposcope_Align_Bam_V0_1_0 = CommandToolBuilder(tool="transposcope_align_bam", base_command=["transposcope", "align", "bam"], inputs=[ToolInput(tag="in_group_one", input_type=Int(optional=True), prefix="--group1", doc=InputDocumentation(doc="")), ToolInput(tag="in_genes", input_type=String(optional=True), prefix="--genes", doc=InputDocumentation(doc="")), ToolInput(tag="in_transpo_scope", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_align", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transposcope_Align_Bam_V0_1_0().translate("wdl", allow_empty_container=True)

