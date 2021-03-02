from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, File

Bstats_V0_1_0 = CommandToolBuilder(tool="bstats", base_command=["bstats"], inputs=[ToolInput(tag="in__verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc=": verbose")), ToolInput(tag="in__sampling_iterations", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc=": Sampling iterations (100)")), ToolInput(tag="in_output_diff_data", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc=": Output diff data to <file>"))], outputs=[ToolOutput(tag="out_output_diff_data", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_diff_data", type_hint=File()), doc=OutputDocumentation(doc=": Output diff data to <file>"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bstats_V0_1_0().translate("wdl", allow_empty_container=True)

