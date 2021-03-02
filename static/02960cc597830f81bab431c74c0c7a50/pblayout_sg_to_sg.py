from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pblayout_Sg_To_Sg_V0_1_0 = CommandToolBuilder(tool="pblayout_sg_to_sg", base_command=["pblayout", "sg-to-sg"], inputs=[ToolInput(tag="in_in_dots_g", input_type=String(), position=0, doc=InputDocumentation(doc="STR  Input SG.")), ToolInput(tag="in_out_dots_g", input_type=String(), position=1, doc=InputDocumentation(doc="STR  Output SG."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_Sg_To_Sg_V0_1_0().translate("wdl", allow_empty_container=True)

