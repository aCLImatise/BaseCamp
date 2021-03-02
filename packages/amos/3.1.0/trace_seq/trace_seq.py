from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Trace_Seq_V0_1_0 = CommandToolBuilder(tool="trace_seq", base_command=["trace_seq"], inputs=[ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_extract_seq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Trace_Seq_V0_1_0().translate("wdl", allow_empty_container=True)

