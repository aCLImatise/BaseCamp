from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Pull_Request_V0_1_0 = CommandToolBuilder(tool="planemo_pull_request", base_command=["planemo", "pull_request"], inputs=[ToolInput(tag="in_message", input_type=String(optional=True), prefix="--message", doc=InputDocumentation(doc="Message describing the pull request to create.")), ToolInput(tag="in_project", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Pull_Request_V0_1_0().translate("wdl")

