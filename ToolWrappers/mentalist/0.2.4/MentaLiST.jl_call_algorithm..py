from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Mentalist_Jl_Call_Algorithm__V0_1_0 = CommandToolBuilder(tool="MentaLiST.jl_call_algorithm.", base_command=["MentaLiST.jl", "call", "algorithm."], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_db", input_type=String(optional=True), prefix="--db", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_mentalist_dot_jl", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_call", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mentalist_Jl_Call_Algorithm__V0_1_0().translate("wdl", allow_empty_container=True)

