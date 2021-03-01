from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Overlap_Align_V0_1_0 = CommandToolBuilder(tool="overlap_align", base_command=["overlap-align"], inputs=[ToolInput(tag="in_fast_a_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_two", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Overlap_Align_V0_1_0().translate("wdl", allow_empty_container=True)

