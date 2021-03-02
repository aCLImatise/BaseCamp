from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Eagle_Convert_Input_V0_1_0 = CommandToolBuilder(tool="eagle_convert_input", base_command=["eagle", "convert", "input"], inputs=[ToolInput(tag="in_ref", input_type=String(optional=True), prefix="--ref", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_1", input_type=Boolean(optional=True), prefix="--samples", doc=InputDocumentation(doc="")), ToolInput(tag="in_eagle", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_convert", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Eagle_Convert_Input_V0_1_0().translate("wdl", allow_empty_container=True)

