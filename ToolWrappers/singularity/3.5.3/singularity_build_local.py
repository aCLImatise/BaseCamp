from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Singularity_Build_Local_V0_1_0 = CommandToolBuilder(tool="singularity_build_local", base_command=["singularity", "build", "local"], inputs=[ToolInput(tag="in_singularity", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_global", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_build", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_local", input_type=String(optional=True), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_image_path", input_type=File(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Build_Local_V0_1_0().translate("wdl", allow_empty_container=True)

