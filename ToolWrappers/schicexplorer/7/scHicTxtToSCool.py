from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int, File

Schictxttoscool_V0_1_0 = CommandToolBuilder(tool="scHicTxtToSCool", base_command=["scHicTxtToSCool"], inputs=[ToolInput(tag="in_matrices", input_type=Array(t=String(), optional=True), prefix="--matrices", doc=InputDocumentation(doc="input file(s). (default: None)")), ToolInput(tag="in_chromosome_sizes", input_type=Int(optional=True), prefix="--chromosomeSizes", doc=InputDocumentation(doc="Text file with two columns, first column is the name\nof the chromosome, second one its length. (default:\nNone)")), ToolInput(tag="in_resolution", input_type=String(optional=True), prefix="--resolution", doc=InputDocumentation(doc="The resolution of the matrix. (default: None)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the scool matrix. (default: None)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the scool matrix. (default: None)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schictxttoscool_V0_1_0().translate("wdl")

