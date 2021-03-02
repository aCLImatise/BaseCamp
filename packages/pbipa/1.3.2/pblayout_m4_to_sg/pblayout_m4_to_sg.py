from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Pblayout_M4_To_Sg_V0_1_0 = CommandToolBuilder(tool="pblayout_m4_to_sg", base_command=["pblayout", "m4-to-sg"], inputs=[ToolInput(tag="in_in_do_tm_four", input_type=Int(), position=0, doc=InputDocumentation(doc="STR  Input M4 or M4F.")), ToolInput(tag="in_out_dots_g", input_type=String(), position=1, doc=InputDocumentation(doc="STR  Output SG."))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_M4_To_Sg_V0_1_0().translate("wdl")

