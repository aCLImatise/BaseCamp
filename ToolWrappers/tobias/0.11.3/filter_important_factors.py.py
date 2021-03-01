from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Filter_Important_Factors_Py_V0_1_0 = CommandToolBuilder(tool="filter_important_factors.py", base_command=["filter_important_factors.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="-in", doc=InputDocumentation(doc="Input file")), ToolInput(tag="in_filter", input_type=String(optional=True), prefix="-filter", doc=InputDocumentation(doc="Filter")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Output file"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Important_Factors_Py_V0_1_0().translate("wdl", allow_empty_container=True)

