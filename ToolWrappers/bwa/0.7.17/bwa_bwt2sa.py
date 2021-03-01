from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Bwa_Bwt2Sa_V0_1_0 = CommandToolBuilder(tool="bwa_bwt2sa", base_command=["bwa", "bwt2sa"], inputs=[ToolInput(tag="in_i", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_bwt", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_dots_a", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bwa_Bwt2Sa_V0_1_0().translate("wdl", allow_empty_container=True)

