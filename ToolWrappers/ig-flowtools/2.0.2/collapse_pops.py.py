from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Collapse_Pops_Py_V0_1_0 = CommandToolBuilder(tool="collapse_pops.py", base_command=["collapse_pops.py"], inputs=[ToolInput(tag="in_file_location_text", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the text file.")), ToolInput(tag="in_list_populations_collapse", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="List of populations to collapse.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file.")), ToolInput(tag="in_what_collapse_populations", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="What to collapse the populations in.")), ToolInput(tag="in_extract_pop", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collapse_Pops_Py_V0_1_0().translate("wdl", allow_empty_container=True)

