from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Anvi_Script_Transpose_Matrix_V0_1_0 = CommandToolBuilder(tool="anvi_script_transpose_matrix", base_command=["anvi-script-transpose-matrix"], inputs=[ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="File path to store results.\n")), ToolInput(tag="in_matrix_file", input_type=String(), position=0, doc=InputDocumentation(doc="Input matrix."))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="File path to store results.\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Anvi_Script_Transpose_Matrix_V0_1_0().translate("wdl", allow_empty_container=True)

