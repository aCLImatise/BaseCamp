from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Generate_Expr_Matrix_From_Rsem_V0_1_0 = CommandToolBuilder(tool="generate_expr_matrix_from_rsem", base_command=["generate_expr_matrix_from_rsem"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="a text file with sample ID and path to its RSEM result file on each line")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="TPM value instead of FPKM vaule"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="TPM value instead of FPKM vaule"))], container="quay.io/biocontainers/gcen:0.5.1--hc9558a2_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Generate_Expr_Matrix_From_Rsem_V0_1_0().translate("wdl")

