from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Getontology_Py_V0_1_0 = CommandToolBuilder(tool="getOntology.py", base_command=["getOntology.py"], inputs=[ToolInput(tag="in_m", input_type=String(optional=True), prefix="-m", doc=InputDocumentation(doc="marker queries.")), ToolInput(tag="in_y", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="marker queries.")), ToolInput(tag="in_name_output_html", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Name of the output html file.")), ToolInput(tag="in_path_supporting_directory", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="Path to the html supporting directory")), ToolInput(tag="in_path_sharetemplates_directory", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Path to the /share/templates directory"))], outputs=[ToolOutput(tag="out_name_output_html", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name_output_html", type_hint=File()), doc=OutputDocumentation(doc="Name of the output html file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Getontology_Py_V0_1_0().translate("wdl", allow_empty_container=True)

