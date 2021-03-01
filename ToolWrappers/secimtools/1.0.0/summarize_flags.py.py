from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Summarize_Flags_Py_V0_1_0 = CommandToolBuilder(tool="summarize_flags.py", base_command=["summarize_flags.py"], inputs=[ToolInput(tag="in_flags", input_type=File(optional=True), prefix="--flags", doc=InputDocumentation(doc="Flag file.")), ToolInput(tag="in_id", input_type=String(optional=True), prefix="--ID", doc=InputDocumentation(doc="Name of the column with unique identifiers.")), ToolInput(tag="in_out_summary", input_type=File(optional=True), prefix="--outSummary", doc=InputDocumentation(doc="Output file for Summary.\n"))], outputs=[ToolOutput(tag="out_out_summary", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_summary", type_hint=File()), doc=OutputDocumentation(doc="Output file for Summary.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarize_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

