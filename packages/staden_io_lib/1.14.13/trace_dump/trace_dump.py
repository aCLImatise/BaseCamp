from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Trace_Dump_V0_1_0 = CommandToolBuilder(tool="trace_dump", base_command=["trace_dump"], inputs=[ToolInput(tag="in_trace_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trace_Dump_V0_1_0().translate("wdl")

