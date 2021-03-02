from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Float, Int

Minimo_V0_1_0 = CommandToolBuilder(tool="Minimo", base_command=["Minimo"], inputs=[ToolInput(tag="in_d", input_type=String(optional=True), prefix="-D", doc=InputDocumentation(doc="")), ToolInput(tag="in_v_one_dot_eight", input_type=Float(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_copyright", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_florent", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_an_gly", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_two_zero_one_zero_dot", input_type=Int(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_under", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_the", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_gpl", input_type=String(), position=7, doc=InputDocumentation(doc="")), ToolInput(tag="in_v_three", input_type=Int(), position=8, doc=InputDocumentation(doc="")), ToolInput(tag="in_open_source", input_type=String(), position=9, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Minimo_V0_1_0().translate("wdl", allow_empty_container=True)

