from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Seqmerge_Input_V0_1_0 = CommandToolBuilder(tool="seqmerge_INPUT", base_command=["seqmerge", "INPUT"], inputs=[ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqmerge_Input_V0_1_0().translate("wdl", allow_empty_container=True)

