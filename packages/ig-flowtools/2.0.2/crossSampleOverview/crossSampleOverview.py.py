from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Directory, String

Crosssampleoverview_Py_V0_1_0 = CommandToolBuilder(tool="crossSampleOverview.py", base_command=["crossSampleOverview.py"], inputs=[ToolInput(tag="in_file_location_summary", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the summary statistics from")), ToolInput(tag="in_file_location_html", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="File location for the HTML output file.")), ToolInput(tag="in_file_location_mfi", input_type=File(optional=True), prefix="-m", doc=InputDocumentation(doc="File location for the MFI from FLOCK.")), ToolInput(tag="in_directory_location_html", input_type=Directory(optional=True), prefix="-d", doc=InputDocumentation(doc="Directory location for the html supporting files.")), ToolInput(tag="in_location_sharetemplates_directory", input_type=Directory(optional=True), prefix="-t", doc=InputDocumentation(doc="Location of the /share/templates Directory.")), ToolInput(tag="in_s", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(optional=True), prefix="-I", doc=InputDocumentation(doc="")), ToolInput(tag="in_cs_overview", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_file_location_html", output_type=File(optional=True), selector=InputSelector(input_to_select="in_file_location_html", type_hint=File()), doc=OutputDocumentation(doc="File location for the HTML output file.")), ToolOutput(tag="out_directory_location_html", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_directory_location_html", type_hint=File()), doc=OutputDocumentation(doc="Directory location for the html supporting files."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Crosssampleoverview_Py_V0_1_0().translate("wdl", allow_empty_container=True)

