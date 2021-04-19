from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Parsec_Tools_Show_Tool_V0_1_0 = CommandToolBuilder(tool="parsec_tools_show_tool", base_command=["parsec", "tools", "show_tool"], inputs=[ToolInput(tag="in_io_details", input_type=Boolean(optional=True), prefix="--io_details", doc=InputDocumentation(doc="whether to get also input and output details")), ToolInput(tag="in_link_details", input_type=Boolean(optional=True), prefix="--link_details", doc=InputDocumentation(doc="whether to get also link details")), ToolInput(tag="in_tool_id", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Parsec_Tools_Show_Tool_V0_1_0().translate("wdl")

