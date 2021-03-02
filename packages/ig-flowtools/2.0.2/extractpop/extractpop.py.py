from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Extractpop_Py_V0_1_0 = CommandToolBuilder(tool="extractpop.py", base_command=["extractpop.py"], inputs=[ToolInput(tag="in_file_location_text", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="File location for the text file.")), ToolInput(tag="in_list_populations_extract", input_type=String(optional=True), prefix="-p", doc=InputDocumentation(doc="List of populations to extract.")), ToolInput(tag="in_name_output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output file.")), ToolInput(tag="in_what_do_populations", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="What to do with the populations."))], outputs=[ToolOutput(tag="out_name_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_file", type_hint=File()), doc=OutputDocumentation(doc="Name of the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extractpop_Py_V0_1_0().translate("wdl", allow_empty_container=True)

