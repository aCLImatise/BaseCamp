from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Hiline_Params_Reference_V0_1_0 = CommandToolBuilder(tool="HiLine_params_REFERENCE", base_command=["HiLine", "params", "REFERENCE"], inputs=[ToolInput(tag="in_restriction_sites", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hiline_Params_Reference_V0_1_0().translate("wdl", allow_empty_container=True)

