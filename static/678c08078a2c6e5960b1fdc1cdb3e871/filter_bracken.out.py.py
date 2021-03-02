from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Filter_Bracken_Out_Py_V0_1_0 = CommandToolBuilder(tool="filter_bracken.out.py", base_command=["filter_bracken.out.py"], inputs=[ToolInput(tag="in_input_file", input_type=File(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Input bracken OUTPUT file. [NOT the report file]")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Output bracken OUTPUT file.")), ToolInput(tag="in_include", input_type=Boolean(optional=True), prefix="--include", doc=InputDocumentation(doc="[T_INCLUDE [T_INCLUDE ...]]\nList of taxonomy IDs to include in output [space-\ndelimited] - default=All")), ToolInput(tag="in_exclude", input_type=Boolean(optional=True), prefix="--exclude", doc=InputDocumentation(doc="[T_EXCLUDE [T_EXCLUDE ...]]\nList of taxonomy IDs to exclude in output [space-\ndelimited] - default=None\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Output bracken OUTPUT file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Bracken_Out_Py_V0_1_0().translate("wdl", allow_empty_container=True)

