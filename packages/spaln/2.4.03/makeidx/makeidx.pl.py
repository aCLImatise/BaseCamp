from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Makeidx_Pl_V0_1_0 = CommandToolBuilder(tool="makeidx.pl", base_command=["makeidx.pl"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_ian_p", input_type=Boolean(optional=True), prefix="-ianp", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makeidx_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

