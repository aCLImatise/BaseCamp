from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nebulizer_List_Users_V0_1_0 = CommandToolBuilder(tool="nebulizer_list_users", base_command=["nebulizer", "list_users"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="list only users with matching email or user name. Can include\nglob-style wild-cards.")), ToolInput(tag="in_long", input_type=Boolean(optional=True), prefix="--long", doc=InputDocumentation(doc="use a long listing format that includes ids, disk usage and\nadmin status.")), ToolInput(tag="in_show_id", input_type=Boolean(optional=True), prefix="--show_id", doc=InputDocumentation(doc="include internal Galaxy user ID.")), ToolInput(tag="in_galaxy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_List_Users_V0_1_0().translate("wdl", allow_empty_container=True)

