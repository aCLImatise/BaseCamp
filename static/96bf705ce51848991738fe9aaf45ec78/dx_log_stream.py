from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dx_Log_Stream_V0_1_0 = CommandToolBuilder(tool="dx_log_stream", base_command=["dx-log-stream"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Log_Stream_V0_1_0().translate("wdl", allow_empty_container=True)

