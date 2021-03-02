from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Split_Fastx_Chunksize_V0_1_0 = CommandToolBuilder(tool="split_fastx_chunksize", base_command=["split_fastx", "chunksize"], inputs=[ToolInput(tag="in_split_fast_x", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_chunksize", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pomoxis:0.3.6--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Split_Fastx_Chunksize_V0_1_0().translate("wdl")

