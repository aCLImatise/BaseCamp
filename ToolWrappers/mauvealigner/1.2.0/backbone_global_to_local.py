from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Backbone_Global_To_Local_V0_1_0 = CommandToolBuilder(tool="backbone_global_to_local", base_command=["backbone_global_to_local"], inputs=[ToolInput(tag="in_x_mfa_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_backbone_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Backbone_Global_To_Local_V0_1_0().translate("wdl", allow_empty_container=True)

