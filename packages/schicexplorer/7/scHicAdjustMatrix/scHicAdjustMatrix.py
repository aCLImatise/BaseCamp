from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Array, Int

Schicadjustmatrix_V0_1_0 = CommandToolBuilder(tool="scHicAdjustMatrix", base_command=["scHicAdjustMatrix"], inputs=[ToolInput(tag="in_matrix", input_type=String(optional=True), prefix="--matrix", doc=InputDocumentation(doc="The matrix to adjust in the scool format. (default:\nNone)")), ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--outFileName", doc=InputDocumentation(doc="File name to save the adjusted matrix. (default: None)")), ToolInput(tag="in_chromosomes", input_type=Array(t=String(), optional=True), prefix="--chromosomes", doc=InputDocumentation(doc="List of chromosomes to keep / remove (default: None)")), ToolInput(tag="in_create_submatrix", input_type=String(optional=True), prefix="--createSubmatrix", doc=InputDocumentation(doc="Keep only first n matrices and remove the rest. Good\nfor test data creation. (default: None)")), ToolInput(tag="in_action", input_type=String(optional=True), prefix="--action", doc=InputDocumentation(doc="Keep, remove or mask the list of specified chromosomes\n/ regions (default: keep)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of threads. Using the python multiprocessing\nmodule. (default: 4)"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="File name to save the adjusted matrix. (default: None)"))], container="quay.io/biocontainers/schicexplorer:7--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Schicadjustmatrix_V0_1_0().translate("wdl")

