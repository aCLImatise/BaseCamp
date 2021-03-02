from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arrow_Cannedkeys_Containing____V0_1_0 = CommandToolBuilder(tool="arrow_cannedkeys_containing...", base_command=["arrow", "cannedkeys", "containing..."], inputs=[ToolInput(tag="in_arrow", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_canned_keys", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_command", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arrow_Cannedkeys_Containing____V0_1_0().translate("wdl", allow_empty_container=True)

