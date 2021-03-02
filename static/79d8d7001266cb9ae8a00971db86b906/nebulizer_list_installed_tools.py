from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Nebulizer_List_Installed_Tools_V0_1_0 = CommandToolBuilder(tool="nebulizer_list_installed_tools", base_command=["nebulizer", "list_installed_tools"], inputs=[ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="only list tool repositories matching NAME. Can include\nglob-style wild-cards.")), ToolInput(tag="in_toolshed", input_type=String(optional=True), prefix="--toolshed", doc=InputDocumentation(doc="only list repositories installed from toolshed matching\nTOOLSHED. Can include glob-style wild-cards.")), ToolInput(tag="in_owner", input_type=String(optional=True), prefix="--owner", doc=InputDocumentation(doc="only list repositories from matching OWNER. Can include\nglob-style wild-cards.")), ToolInput(tag="in_list_tools", input_type=Boolean(optional=True), prefix="--list-tools", doc=InputDocumentation(doc="also list the tools associated with each installed\nrepository revision changeset.")), ToolInput(tag="in_updateable", input_type=Boolean(optional=True), prefix="--updateable", doc=InputDocumentation(doc="only show repositories with uninstalled updates or")), ToolInput(tag="in_upgrades_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--check-toolshed     check installed revisions directly against those")), ToolInput(tag="in_slow_dot", input_type=String(), position=0, doc=InputDocumentation(doc="--help               Show this message and exit."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nebulizer_List_Installed_Tools_V0_1_0().translate("wdl", allow_empty_container=True)

