from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Singularity_Verify_Verify_V0_1_0 = CommandToolBuilder(tool="singularity_verify_verify", base_command=["singularity", "verify", "verify"], inputs=[ToolInput(tag="in_singularity", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_global", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_options_dot_dot_dot", input_type=String(optional=True), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_verify", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singularity_Verify_Verify_V0_1_0().translate("wdl", allow_empty_container=True)

