from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Poppunk_Calculate_Rand_Indices_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_calculate_rand_indices.py", base_command=["poppunk_calculate_rand_indices.py"], inputs=[ToolInput(tag="in_input", input_type=String(optional=True), prefix="--input", doc=InputDocumentation(doc="Comma separated list of clustering CSVs between which\nindices should be calculated (required)")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output file [default = rand.out]")), ToolInput(tag="in_subset", input_type=File(optional=True), prefix="--subset", doc=InputDocumentation(doc="File with list of sequences to extract for comparison, one\nper line, no header; must be present in all CSVs\n")), ToolInput(tag="in_calculate_rand_indices", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file [default = rand.out]"))], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Calculate_Rand_Indices_Py_V0_1_0().translate("wdl")

