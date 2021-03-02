from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Cmph5Tools_Py_Stats_V0_1_0 = CommandToolBuilder(tool="cmph5tools.py_stats", base_command=["cmph5tools.py", "stats"], inputs=[ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outFile", doc=InputDocumentation(doc="output csv filename")), ToolInput(tag="in_what", input_type=String(optional=True), prefix="--what", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outfile", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outfile", type_hint=File()), doc=OutputDocumentation(doc="output csv filename"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmph5Tools_Py_Stats_V0_1_0().translate("wdl", allow_empty_container=True)

