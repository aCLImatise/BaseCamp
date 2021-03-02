from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mb_Softclip_Analyzer_Output_Dir_V0_1_0 = CommandToolBuilder(tool="mb_softclip_analyzer_output_dir", base_command=["mb-softclip-analyzer", "output_dir"], inputs=[ToolInput(tag="in_top_n", input_type=String(optional=True), prefix="--top_n", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_soft_clip_analyzer", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Softclip_Analyzer_Output_Dir_V0_1_0().translate("wdl", allow_empty_container=True)

