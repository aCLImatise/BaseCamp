from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Hailctl_Dev_Deploy_V0_1_0 = CommandToolBuilder(tool="hailctl_dev_deploy", base_command=["hailctl", "dev", "deploy"], inputs=[ToolInput(tag="in_branch", input_type=String(optional=True), prefix="--branch", doc=InputDocumentation(doc="Fully-qualified branch, e.g., hail-is/hail:feature.")), ToolInput(tag="in_steps", input_type=String(optional=True), prefix="--steps", doc=InputDocumentation(doc="Comma-separated list of steps to run.")), ToolInput(tag="in_open", input_type=Boolean(optional=True), prefix="--open", doc=InputDocumentation(doc="Open the deploy batch page in a web browser."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hailctl_Dev_Deploy_V0_1_0().translate("wdl", allow_empty_container=True)

