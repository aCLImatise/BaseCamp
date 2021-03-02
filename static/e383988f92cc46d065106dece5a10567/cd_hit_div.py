from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Cd_Hit_Div_V0_1_0 = CommandToolBuilder(tool="cd_hit_div", base_command=["cd-hit-div"], inputs=[ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=", required")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc=", required")), ToolInput(tag="in_div", input_type=Int(optional=True), prefix="-div", doc=InputDocumentation(doc="of divide, required"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cd_Hit_Div_V0_1_0().translate("wdl", allow_empty_container=True)

