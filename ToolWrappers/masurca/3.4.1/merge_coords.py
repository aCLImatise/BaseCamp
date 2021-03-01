from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Merge_Coords_V0_1_0 = CommandToolBuilder(tool="merge_coords", base_command=["merge_coords"], inputs=[ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (stdout)")), ToolInput(tag="in_merge_coords_cmdline", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_coords", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (stdout)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Coords_V0_1_0().translate("wdl", allow_empty_container=True)

