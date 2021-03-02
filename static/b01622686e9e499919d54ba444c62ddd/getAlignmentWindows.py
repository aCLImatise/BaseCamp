from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Getalignmentwindows_V0_1_0 = CommandToolBuilder(tool="getAlignmentWindows", base_command=["getAlignmentWindows"], inputs=[ToolInput(tag="in_x_mfa_alignment", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_window_length", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_window_shift_amount", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_base_output_filename", input_type=File(), position=3, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_base_output_filename", output_type=File(), selector=InputSelector(input_to_select="in_base_output_filename", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getalignmentwindows_V0_1_0().translate("wdl", allow_empty_container=True)

