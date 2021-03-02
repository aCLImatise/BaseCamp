from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Reduce_Alignment_V0_1_0 = CommandToolBuilder(tool="reduce_alignment", base_command=["reduce-alignment"], inputs=[ToolInput(tag="in_start", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_width", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_alignment", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Reduce_Alignment_V0_1_0().translate("wdl", allow_empty_container=True)

