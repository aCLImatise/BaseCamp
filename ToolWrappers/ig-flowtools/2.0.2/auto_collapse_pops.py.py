from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Auto_Collapse_Pops_Py_V0_1_0 = CommandToolBuilder(tool="auto_collapse_pops.py", base_command=["auto_collapse_pops.py"], inputs=[ToolInput(tag="in_flock_output_file", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="FLOCK output file")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file.")), ToolInput(tag="in_name_report_file", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc="Name of the report file.")), ToolInput(tag="in_file_location_profiletxt", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="File location for the profile.txt from FLOCK.")), ToolInput(tag="in_auto_pop_collapse_from_profile", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_flock_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_flock_output_file", type_hint=File()), doc=OutputDocumentation(doc="FLOCK output file")), ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Auto_Collapse_Pops_Py_V0_1_0().translate("wdl", allow_empty_container=True)

