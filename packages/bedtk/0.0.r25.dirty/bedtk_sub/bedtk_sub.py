from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Bedtk_Sub_V0_1_0 = CommandToolBuilder(tool="bedtk_sub", base_command=["bedtk", "sub"], inputs=[ToolInput(tag="in_minu_end_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sub_tra_hend_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtk:0.0.r25.dirty--hed695b0_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtk_Sub_V0_1_0().translate("wdl")

