from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, File

Normgenecounts_Py_V0_1_0 = CommandToolBuilder(tool="NormGeneCounts.py", base_command=["NormGeneCounts.py"], inputs=[ToolInput(tag="in_frac_thresh", input_type=Float(optional=True), prefix="--frac_thresh", doc=InputDocumentation(doc="threshold for assigning gene to strain as fraction of\nreads deriving from it, defaults to 0.01")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output_file", doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Normgenecounts_Py_V0_1_0().translate("wdl", allow_empty_container=True)

