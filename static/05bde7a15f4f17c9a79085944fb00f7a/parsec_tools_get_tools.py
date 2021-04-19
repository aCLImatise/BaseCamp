from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Parsec_Tools_Get_Tools_V0_1_0 = CommandToolBuilder(tool="parsec_tools_get_tools", base_command=["parsec", "tools", "get_tools"], inputs=[ToolInput(tag="in_tool_id", input_type=String(optional=True), prefix="--tool_id", doc=InputDocumentation(doc="id of the requested tool")), ToolInput(tag="in_name", input_type=String(optional=True), prefix="--name", doc=InputDocumentation(doc="name of the requested tool(s)")), ToolInput(tag="in_return_only_tools", input_type=Boolean(optional=True), prefix="--trackster", doc=InputDocumentation(doc="whether to return only tools that are compatible with")), ToolInput(tag="in_both_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Output:\nList of tool descriptions.\n.. seealso:: bioblend.galaxy.toolshed.get_repositories()")), ToolInput(tag="in__help_show", input_type=String(), position=0, doc=InputDocumentation(doc="-h, --help      Show this message and exit."))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Tools_Get_Tools_V0_1_0().translate("wdl")

