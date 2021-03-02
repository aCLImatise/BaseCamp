from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Candf_V0_1_0 = CommandToolBuilder(tool="candf", base_command=["candf"], inputs=[ToolInput(tag="in_t", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_r", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_2", input_type=Int(optional=True), prefix="-S", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_3", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_4", input_type=Int(optional=True), prefix="-M", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_5", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_c", input_type=Int(optional=True), prefix="-c", doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_o", output_type=File(optional=True), selector=InputSelector(input_to_select="in_o", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Candf_V0_1_0().translate("wdl", allow_empty_container=True)

