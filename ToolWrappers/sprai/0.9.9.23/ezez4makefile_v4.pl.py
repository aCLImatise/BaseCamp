from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ezez4Makefile_V4_Pl_V0_1_0 = CommandToolBuilder(tool="ezez4makefile_v4.pl", base_command=["ezez4makefile_v4.pl"], inputs=[ToolInput(tag="in_this", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ec_dot_spec", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_as_mdot_spec", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_or", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ezez4Makefile_V4_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

