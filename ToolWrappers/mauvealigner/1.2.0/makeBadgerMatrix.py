from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Makebadgermatrix_V0_1_0 = CommandToolBuilder(tool="makeBadgerMatrix", base_command=["makeBadgerMatrix"], inputs=[ToolInput(tag="in_input_x_mfa", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_badger_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_lcb_coordinate_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_badger_file", output_type=File(), selector=InputSelector(input_to_select="in_output_badger_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Makebadgermatrix_V0_1_0().translate("wdl", allow_empty_container=True)

