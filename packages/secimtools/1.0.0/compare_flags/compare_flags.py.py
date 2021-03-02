from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int

Compare_Flags_Py_V0_1_0 = CommandToolBuilder(tool="compare_flags.py", base_command=["compare_flags.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input dataset in wide format.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file (Cross tab format).")), ToolInput(tag="in_flag_one", input_type=Int(optional=True), prefix="--flag1", doc=InputDocumentation(doc="Flag 1 to create cross tab")), ToolInput(tag="in_flag_two", input_type=Int(optional=True), prefix="--flag2", doc=InputDocumentation(doc="Flag 2 to create cross tab\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file (Cross tab format)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

