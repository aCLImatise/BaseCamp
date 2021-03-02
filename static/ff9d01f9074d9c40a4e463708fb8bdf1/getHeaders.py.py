from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Getheaders_Py_V0_1_0 = CommandToolBuilder(tool="getHeaders.py", base_command=["getHeaders.py"], inputs=[ToolInput(tag="in_file_location_text", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the text files.")), ToolInput(tag="in_file_names", input_type=File(optional=True), prefix="-n", doc=InputDocumentation(doc="File names.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getheaders_Py_V0_1_0().translate("wdl", allow_empty_container=True)

