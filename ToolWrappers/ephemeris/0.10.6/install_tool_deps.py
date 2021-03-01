from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Install_Tool_Deps_V0_1_0 = CommandToolBuilder(tool="install_tool_deps", base_command=["install_tool_deps"], inputs=[ToolInput(tag="in_path_tool_file", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="[TOOL [TOOL ...]], --tool [TOOL [TOOL ...]]\nPath to a tool file, tool_conf file, or yaml file\ncontaining a sequence of tool ids")), ToolInput(tag="in_spaceseparated_list_tool", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[ID [ID ...]], --id [ID [ID ...]]\nSpace-separated list of tool ids")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Increase output verbosity.")), ToolInput(tag="in_galaxy", input_type=String(optional=True), prefix="--galaxy", doc=InputDocumentation(doc="Target Galaxy instance URL/IP address")), ToolInput(tag="in_user", input_type=String(optional=True), prefix="--user", doc=InputDocumentation(doc="Galaxy user email address")), ToolInput(tag="in_password", input_type=String(optional=True), prefix="--password", doc=InputDocumentation(doc="Password for the Galaxy user")), ToolInput(tag="in_api_key", input_type=File(optional=True), prefix="--api_key", doc=InputDocumentation(doc="Galaxy admin user API key (required if not defined in\nthe tools list file)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Install_Tool_Deps_V0_1_0().translate("wdl", allow_empty_container=True)

