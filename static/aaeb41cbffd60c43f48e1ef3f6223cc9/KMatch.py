from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Kmatch_V0_1_0 = CommandToolBuilder(tool="KMatch", base_command=["KMatch"], inputs=[ToolInput(tag="in_query_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_k", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_fa", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_min_length", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_jump", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_max_freq", input_type=String(), position=6, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kmatch_V0_1_0().translate("wdl", allow_empty_container=True)

