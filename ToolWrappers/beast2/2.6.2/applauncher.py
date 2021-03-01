from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Applauncher_V0_1_0 = CommandToolBuilder(tool="applauncher", base_command=["applauncher"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="-list", doc=InputDocumentation(doc="")), ToolInput(tag="in_app_launcher", input_type=String(), position=0, doc=InputDocumentation(doc="applauncher -help"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Applauncher_V0_1_0().translate("wdl", allow_empty_container=True)

