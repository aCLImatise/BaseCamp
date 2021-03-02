from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Crux_Make_Pin_Crux_Output__V0_1_0 = CommandToolBuilder(tool="crux_make_pin_crux_output.", base_command=["crux", "make-pin", "crux-output."], inputs=[ToolInput(tag="in_crux", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_make_pin", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_target_input", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crux_Make_Pin_Crux_Output__V0_1_0().translate("wdl", allow_empty_container=True)

