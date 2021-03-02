from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Chaintopsl_V0_1_0 = CommandToolBuilder(tool="chainToPsl", base_command=["chainToPsl"], inputs=[ToolInput(tag="in_in_dot_chain", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_t_sizes", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_q_sizes", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_dot_lst", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_query_dot_lst", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chaintopsl_V0_1_0().translate("wdl", allow_empty_container=True)

