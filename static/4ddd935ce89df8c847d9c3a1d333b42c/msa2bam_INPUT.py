from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Msa2Bam_Input_V0_1_0 = CommandToolBuilder(tool="msa2bam_INPUT", base_command=["msa2bam", "INPUT"], inputs=[ToolInput(tag="in_r", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Msa2Bam_Input_V0_1_0().translate("wdl", allow_empty_container=True)

