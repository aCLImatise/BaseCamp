from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Clone_V0_1_0 = CommandToolBuilder(tool="planemo_clone", base_command=["planemo", "clone"], inputs=[ToolInput(tag="in_skip_fork", input_type=String(optional=True), prefix="--skip_fork", doc=InputDocumentation(doc="Create a named branch on result.")), ToolInput(tag="in_target", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Clone_V0_1_0().translate("wdl")

