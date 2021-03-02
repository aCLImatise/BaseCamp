from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Mhpl8R_Unite_Dad_V0_1_0 = CommandToolBuilder(tool="mhpl8r_unite_dad", base_command=["mhpl8r", "unite", "dad"], inputs=[ToolInput(tag="in_s", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_mhp_leigh_tr", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_unite", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mom", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_dad", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mhpl8R_Unite_Dad_V0_1_0().translate("wdl", allow_empty_container=True)

