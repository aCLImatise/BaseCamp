from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hiline_Params_Restriction_Sites_V0_1_0 = CommandToolBuilder(tool="HiLine_params_RESTRICTION_SITES", base_command=["HiLine", "params", "RESTRICTION_SITES"], inputs=[ToolInput(tag="in_hi_line", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_params", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_restriction_sites", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Params_Restriction_Sites_V0_1_0().translate("wdl", allow_empty_container=True)

