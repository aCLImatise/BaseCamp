from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Merge_Flags_Py_V0_1_0 = CommandToolBuilder(tool="merge_flags.py", base_command=["merge_flags.py"], inputs=[ToolInput(tag="in_input", input_type=Array(t=String(), optional=True), prefix="--input", doc=InputDocumentation(doc="Input any number of flag files that have the same\nindexes")), ToolInput(tag="in_filename", input_type=Array(t=File(), optional=True), prefix="--filename", doc=InputDocumentation(doc="Filename for input data.")), ToolInput(tag="in_flag_uniqid", input_type=String(optional=True), prefix="--flagUniqID", doc=InputDocumentation(doc="Name of the column with unique identifiers in the flag\nfiles.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Output file\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Output file\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Flags_Py_V0_1_0().translate("wdl", allow_empty_container=True)

