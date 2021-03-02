from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Pairs_Quartet_Dist_V0_1_0 = CommandToolBuilder(tool="pairs_quartet_dist", base_command=["pairs_quartet_dist"], inputs=[ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_one", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_filename_two", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_filename", input_type=File(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_filename", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pairs_Quartet_Dist_V0_1_0().translate("wdl", allow_empty_container=True)

