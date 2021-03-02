from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Fetchchromsizes_V0_1_0 = CommandToolBuilder(tool="fetchChromSizes", base_command=["fetchChromSizes"], inputs=[ToolInput(tag="in_always_prompt_removing", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Always prompt before removing")), ToolInput(tag="in_never_prompt", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Never prompt")), ToolInput(tag="in_recurse", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="Recurse")), ToolInput(tag="in_irf", input_type=Boolean(optional=True), prefix="-irf", doc=InputDocumentation(doc="")), ToolInput(tag="in_rm", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_dot_dot_dot", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fetchchromsizes_V0_1_0().translate("wdl", allow_empty_container=True)

