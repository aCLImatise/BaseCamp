from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Combine_Bracken_Outputs_Py_V0_1_0 = CommandToolBuilder(tool="combine_bracken_outputs.py", base_command=["combine_bracken_outputs.py"], inputs=[ToolInput(tag="in_files", input_type=Array(t=String(), optional=True), prefix="--files", doc=InputDocumentation(doc="Bracken output files to combine.")), ToolInput(tag="in_names", input_type=File(optional=True), prefix="--names", doc=InputDocumentation(doc="Names for each input file - to be used in column\nheaders of output [separate names with commas]")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output file with combined Bracken results.\n"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file with combined Bracken results.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Bracken_Outputs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

