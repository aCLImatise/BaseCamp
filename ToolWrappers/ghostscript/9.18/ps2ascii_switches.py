from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Ps2Ascii_Switches_V0_1_0 = CommandToolBuilder(tool="ps2ascii_switches", base_command=["ps2ascii", "switches"], inputs=[ToolInput(tag="in_dict", input_type=Boolean(optional=True), prefix="--dict", doc=InputDocumentation(doc=":1245/1684(ro)(G)--   --dict:0/20(G)--   --dict:81/200(L)--"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ps2Ascii_Switches_V0_1_0().translate("wdl", allow_empty_container=True)

