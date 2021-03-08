from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Planemo_Shed_Build_V0_1_0 = CommandToolBuilder(tool="planemo_shed_build", base_command=["planemo", "shed_build"], inputs=[ToolInput(tag="in_tool_path", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.3--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Shed_Build_V0_1_0().translate("wdl")

