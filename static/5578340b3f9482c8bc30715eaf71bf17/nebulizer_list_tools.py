from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Nebulizer_List_Tools_V0_1_0 = CommandToolBuilder(tool="nebulizer_list_tools", base_command=["nebulizer", "list_tools"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="list only tools matching NAME. Can include glob-style wild-")), ToolInput(tag="in_tool", input_type=String(), position=0, doc=InputDocumentation(doc="name, version, tool panel section, and toolshed repository and revision")), ToolInput(tag="in_changeset_dot", input_type=String(), position=1, doc=InputDocumentation(doc="Options:")), ToolInput(tag="in_cards_dot", input_type=String(), position=2, doc=InputDocumentation(doc="--installed  only list tools that have been installed from a toolshed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_List_Tools_V0_1_0().translate("wdl", allow_empty_container=True)

