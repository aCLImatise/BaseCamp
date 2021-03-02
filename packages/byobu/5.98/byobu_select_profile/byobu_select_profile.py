from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Byobu_Select_Profile_V0_1_0 = CommandToolBuilder(tool="byobu_select_profile", base_command=["byobu-select-profile"], inputs=[ToolInput(tag="in_list", input_type=Boolean(optional=True), prefix="--list", doc=InputDocumentation(doc="list available profiles")), ToolInput(tag="in_background", input_type=Boolean(optional=True), prefix="--background", doc=InputDocumentation(doc="set the background color")), ToolInput(tag="in_foreground", input_type=Boolean(optional=True), prefix="--foreground", doc=InputDocumentation(doc="set the foreground color"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Byobu_Select_Profile_V0_1_0().translate("wdl", allow_empty_container=True)

