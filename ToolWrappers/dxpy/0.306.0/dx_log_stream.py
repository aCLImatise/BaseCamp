from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dx_Log_Stream_V0_1_0 = CommandToolBuilder(tool="dx_log_stream", base_command=["dx-log-stream"], inputs=[ToolInput(tag="in_level", input_type=String(optional=True), prefix="--level", doc=InputDocumentation(doc="Logging level to use")), ToolInput(tag="in_source", input_type=String(optional=True), prefix="--source", doc=InputDocumentation(doc="Source ID to use\n"))], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Log_Stream_V0_1_0().translate("wdl")

