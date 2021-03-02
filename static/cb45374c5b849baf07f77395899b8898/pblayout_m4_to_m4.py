from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Pblayout_M4_To_M4_V0_1_0 = CommandToolBuilder(tool="pblayout_m4_to_m4", base_command=["pblayout", "m4-to-m4"], inputs=[ToolInput(tag="in_in_do_tm_four", input_type=Int(), position=0, doc=InputDocumentation(doc="STR  Input M4.")), ToolInput(tag="in_out_do_tm_four", input_type=Int(), position=1, doc=InputDocumentation(doc="STR  Output M4."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_M4_To_M4_V0_1_0().translate("wdl", allow_empty_container=True)

