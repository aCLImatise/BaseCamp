from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Poppunk_Extract_Distances_Py_V0_1_0 = CommandToolBuilder(tool="poppunk_extract_distances.py", base_command=["poppunk_extract_distances.py"], inputs=[ToolInput(tag="in_distances", input_type=File(optional=True), prefix="--distances", doc=InputDocumentation(doc="Prefix of input pickle (and optionally, numpy file) of\npre-calculated distances (required)")), ToolInput(tag="in_sparse", input_type=File(optional=True), prefix="--sparse", doc=InputDocumentation(doc="Sparse distance matrix file name")), ToolInput(tag="in_tree", input_type=File(optional=True), prefix="--tree", doc=InputDocumentation(doc="Newick file containing phylogeny of isolates")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Name of output file")), ToolInput(tag="in_extract_distances", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Name of output file"))], container="quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Poppunk_Extract_Distances_Py_V0_1_0().translate("wdl")

