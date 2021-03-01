from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Poppunk_Extract_Distances_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_extract_distances.py", base_command=["poppunk_extract_distances.py"], inputs=[ToolInput(tag="in_distances", input_type=File(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle and numpy file of pre-\ncalculated distances (required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output file")), ToolInput(tag="in_extract_distances", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Extract_Distances_Py_V0_1_0().translate("wdl", allow_empty_container=True)

