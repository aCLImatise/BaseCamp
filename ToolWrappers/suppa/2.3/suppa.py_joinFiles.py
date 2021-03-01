from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File

Suppa_Py_Joinfiles_V0_1_0 = CommandToolBuilder(tool="suppa.py_joinFiles", base_command=["suppa.py", "joinFiles"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input-files", doc=InputDocumentation(doc="Space separated list of the files to be joined. If the\nabsolute path is not indicate the program use the\ncurrent working directory instead.")), ToolInput(tag="in_file_extension", input_type=File(optional=True), prefix="--file-extension", doc=InputDocumentation(doc="Extension of the output file. Required.")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of the output file.\n"))], outputs=[ToolOutput(tag="out_file_extension", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_extension", type_hint=File()), doc=OutputDocumentation(doc="Extension of the output file. Required.")), ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Suppa_Py_Joinfiles_V0_1_0().translate("wdl", allow_empty_container=True)

