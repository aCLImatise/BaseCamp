from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Planemo_Open_V0_1_0 = CommandToolBuilder(tool="planemo_open", base_command=["planemo", "open"], inputs=[ToolInput(tag="in_path", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/planemo:0.74.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Planemo_Open_V0_1_0().translate("wdl")

