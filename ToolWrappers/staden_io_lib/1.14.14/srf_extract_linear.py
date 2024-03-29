from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Srf_Extract_Linear_V0_1_0 = CommandToolBuilder(tool="srf_extract_linear", base_command=["srf_extract_linear"], inputs=[ToolInput(tag="in_extract_linear_srf", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_archive_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_trace_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/staden_io_lib:1.14.14--h9dace67_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Srf_Extract_Linear_V0_1_0().translate("wdl")

