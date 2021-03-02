from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Rsem_Bam2Readdepth_V0_1_0 = CommandToolBuilder(tool="rsem_bam2readdepth", base_command=["rsem-bam2readdepth"], inputs=[ToolInput(tag="in_sorted_bam_input", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_depth_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rsem_Bam2Readdepth_V0_1_0().translate("wdl", allow_empty_container=True)

