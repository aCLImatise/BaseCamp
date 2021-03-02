from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Profilecls_Py_V0_1_0 = CommandToolBuilder(tool="profileCLs.py", base_command=["profileCLs.py"], inputs=[ToolInput(tag="in_file_location_profiletxt", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the profile.txt from FLOCK.")), ToolInput(tag="in_name_output_html", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output html file.")), ToolInput(tag="in_path_supporting_directory", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Path to html supporting directory.")), ToolInput(tag="in_path_sharetemplates_directory", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Path to the /share/templates directory")), ToolInput(tag="in_tool_dir", input_type=String(), position=0, doc=InputDocumentation(doc="runs flowCL on a each population defined by FLOCK."))], outputs=[ToolOutput(tag="out_name_output_html", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_html", type_hint=File()), doc=OutputDocumentation(doc="Name of the output html file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Profilecls_Py_V0_1_0().translate("wdl", allow_empty_container=True)

