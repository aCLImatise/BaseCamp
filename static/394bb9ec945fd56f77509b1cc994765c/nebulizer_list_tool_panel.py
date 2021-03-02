from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nebulizer_List_Tool_Panel_V0_1_0 = CommandToolBuilder(tool="nebulizer_list_tool_panel", base_command=["nebulizer", "list_tool_panel"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="only list tool panel sections where name or id match NAME. Can\ninclude glob-style wild-cards.")), ToolInput(tag="in_list_tools", input_type=Boolean(optional=True), prefix="--list-tools", doc=InputDocumentation(doc="also list the associated tools for each section")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_List_Tool_Panel_V0_1_0().translate("wdl", allow_empty_container=True)

