from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File

Schiccorrectmatrices_V0_1_0 = CommandToolBuilder(tool="scHicCorrectMatrices", base_command=["scHicCorrectMatrices"], inputs=[ToolInput(tag="in_matrix", input_type=Int(optional=True), prefix="--matrix", doc=InputDocumentation(doc="Matrix to reduce in h5 format. (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the resulting matrix, please add the\nscool prefix. (default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the resulting matrix, please add the\nscool prefix. (default: None)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schiccorrectmatrices_V0_1_0().translate("wdl")

