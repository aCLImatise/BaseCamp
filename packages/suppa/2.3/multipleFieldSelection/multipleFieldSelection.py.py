from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, File, Boolean

Multiplefieldselection_Py_V0_1_0 = CommandToolBuilder(tool="multipleFieldSelection.py", base_command=["multipleFieldSelection.py"], inputs=[ToolInput(tag="in_input_files", input_type=Array(t=String(), optional=True), prefix="--input-files", doc=InputDocumentation(doc="spaced separated list of files to join.")), ToolInput(tag="in_key_field", input_type=String(optional=True), prefix="--key-field", doc=InputDocumentation(doc="common field among the input files.")), ToolInput(tag="in_fields", input_type=Array(t=String(), optional=True), prefix="--fields", doc=InputDocumentation(doc="spaced separated list of fields to select.(starting in 1)")), ToolInput(tag="in_separator", input_type=String(optional=True), prefix="--separator", doc=InputDocumentation(doc="field separator")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="name of the output file.")), ToolInput(tag="in_no_header", input_type=Boolean(optional=True), prefix="--no-header", doc=InputDocumentation(doc="use it if the file has no header."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="name of the output file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Multiplefieldselection_Py_V0_1_0().translate("wdl", allow_empty_container=True)

