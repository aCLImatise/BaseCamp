from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Suppa_Py_Psiperisoform_V0_1_0 = CommandToolBuilder(tool="suppa.py_psiPerIsoform", base_command=["suppa.py", "psiPerIsoform"], inputs=[ToolInput(tag="in_gtf_file", input_type=File(optional=True), prefix="--gtf-file", doc=InputDocumentation(doc="Input gtf file")), ToolInput(tag="in_expression_file", input_type=File(optional=True), prefix="--expression-file", doc=InputDocumentation(doc="Input expression file")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="Path and name of the ouput file")), ToolInput(tag="in_mode", input_type=String(optional=True), prefix="--mode", doc=InputDocumentation(doc="to choose from DEBUG, INFO, WARNING, ERROR and\nCRITICAL\n"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="Path and name of the ouput file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Suppa_Py_Psiperisoform_V0_1_0().translate("wdl", allow_empty_container=True)

