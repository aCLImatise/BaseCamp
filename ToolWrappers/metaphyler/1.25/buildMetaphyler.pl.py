from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Buildmetaphyler_Pl_V0_1_0 = CommandToolBuilder(tool="buildMetaphyler.pl", base_command=["buildMetaphyler.pl"], inputs=[ToolInput(tag="in_norm_vertical_line_un_norm", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_two", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_lengths", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_taxonomy", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_blast", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Buildmetaphyler_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

