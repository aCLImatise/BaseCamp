from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Ufasta_Arg____V0_1_0 = CommandToolBuilder(tool="ufasta_arg...", base_command=["ufasta", "arg..."], inputs=[ToolInput(tag="in_u_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_cmd", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_arg_dot_dot_dot", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ufasta_Arg____V0_1_0().translate("wdl", allow_empty_container=True)

