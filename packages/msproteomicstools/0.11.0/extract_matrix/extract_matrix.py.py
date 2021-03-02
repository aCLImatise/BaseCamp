from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Array

Extract_Matrix_Py_V0_1_0 = CommandToolBuilder(tool="extract_matrix.py", base_command=["extract_matrix.py"], inputs=[ToolInput(tag="in_in", input_type=File(optional=True), prefix="--in", doc=InputDocumentation(doc="feature aligner file")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="output matrix")), ToolInput(tag="in_columns", input_type=Array(t=String(), optional=True), prefix="--columns", doc=InputDocumentation(doc="Which columns are written\n"))], outputs=[], container="quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Matrix_Py_V0_1_0().translate("wdl")

