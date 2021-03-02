from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Matrix_To_Fasta_Py_V0_1_0 = CommandToolBuilder(tool="matrix_to_fasta.py", base_command=["matrix_to_fasta.py"], inputs=[ToolInput(tag="in_input_matrix", input_type=File(optional=True), prefix="--input_matrix", doc=InputDocumentation(doc="/path/to/NASP_matrix [REQUIRED]")), ToolInput(tag="in_output_prefix", input_type=String(optional=True), prefix="--output_prefix", doc=InputDocumentation(doc="prefix for outfiles [REQUIRED]")), ToolInput(tag="in_filter_frequency", input_type=Int(optional=True), prefix="--filter_frequency", doc=InputDocumentation(doc="filter out missing data if missing is greater than or\nequal to given frequency, defaults to 1\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Matrix_To_Fasta_Py_V0_1_0().translate("wdl", allow_empty_container=True)

