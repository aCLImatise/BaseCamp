from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Megagta_Findstart_V0_1_0 = CommandToolBuilder(tool="megagta_findstart", base_command=["megagta", "findstart"], inputs=[ToolInput(tag="in_find_start", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_seq", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_read_dot_lib", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_k_size", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megagta_Findstart_V0_1_0().translate("wdl", allow_empty_container=True)

